#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/timer/delay.h"
#include "neuton/neuton.h"
#include "neuton/neuton_version.h"
#include "app/inference_postprocessing.h"
#include "app/sleep_timer.h"
#include "app/sensor.h"

//////////////////////////////////////////////////////////////////////////////

#define PREDICTION_TIMEOUT_MS                       (800U)
#define PREDICTION_TIMEOUT_US                       (PREDICTION_TIMEOUT_MS * 1000)

//////////////////////////////////////////////////////////////////////////////

static volatile bool sensor_data_ready_ = true;
static struct sensor_device_t sensor_;

//////////////////////////////////////////////////////////////////////////////

static void processed_prediction_subscriber_(const class_label_t class_label, 
                                            const float probability,
                                            const char* class_name,
                                            const bool is_raw_prediction);

//////////////////////////////////////////////////////////////////////////////

static void sensor_data_ready_cb_(void)
{
    sensor_data_ready_ = true;
}

//////////////////////////////////////////////////////////////////////////////

int main(void) 
{
    SYSTEM_Initialize();
    RTC_Start();
    sleep_timer_init();
    DELAY_milliseconds(1000);
    
    printf("\r\n===== Neuton.AI AVR128DB48 Gestures Recognition Demo =====\r\n");
    printf("Neuton Version: %d.%d.%d\r\n", NEUTON_MAJOR_VERSION, NEUTON_MINOR_VERSION, NEUTON_PATCH_VERSION);

    /* Init and configure sensor */    
    if (sensor_init(&sensor_, sensor_data_ready_cb_) != SNSR_STATUS_OK) 
    {
        printf("ERROR: sensor init result = %d\r\n", sensor_.status);
    }

    /* Set sensor configuration */
    if (sensor_set_config(&sensor_) != SNSR_STATUS_OK) 
    {
        printf("ERROR: sensor configuration result = %d\r\n", sensor_.status);
    }
    
    snsr_data_t sensor_data[SNSR_NUM_AXES];
    neuton_input_features_t* p_input_features = NULL;
    
     /** Initialize Neuton.AI library */
    neuton_nn_setup();
    
    printf("Looking for user gestures... \r\n");

    while (1)
    {
        /* Check if sensor data ready interrupt was generated */
        if (!sensor_data_ready_)
        {
            DELAY_milliseconds(1);
            continue;
        }
        
        sensor_data_ready_ = false;
        
        /* Read raw sensor data, Accelerometer and Gyroscope 6-axis*/
        if (sensor_read(&sensor_, sensor_data) != SNSR_STATUS_OK)
        {
            printf("ERROR; sensor read result = %d\r\n", sensor_.status);
            continue;
        }
        
        /* Feeding real-time sensor data to Neuton library to collect and prepare input features window */
        p_input_features = neuton_nn_feed_inputs(sensor_data, SNSR_NUM_AXES);
        
        /* Check if input features ready for signal processing & model inference */
        if (p_input_features == NULL)
            continue;
        
        neuton_u16_t predicted_class_idx;
        const neuton_output_t* p_probabilities;
        
        /* Run Neuton model inference */
        neuton_i16_t classes_num = neuton_nn_run_inference(p_input_features,
                                                           &predicted_class_idx,
                                                           &p_probabilities);
        /* Check if prediction was successful and there is no errors */
        if (classes_num > 0)
        {
            /* Do model inference postprocessing if required */
            bool do_postprocessing = true;
            inference_postprocess(predicted_class_idx, 
                                  p_probabilities[predicted_class_idx],
                                  do_postprocessing,
                                  processed_prediction_subscriber_);
        }
    }
}


//////////////////////////////////////////////////////////////////////////////

static void processed_prediction_subscriber_(const class_label_t class_label, 
                                            const float probability,
                                            const char* class_name,
                                            const bool is_raw_prediction)
{
    if (is_raw_prediction)
    {
        printf("RAW Prediction %s %d %%\r\n", class_name, (int8_t)(probability * 100.0f));
    }
    else if (class_label > CLASS_LABEL_UNKNOWN)
    {
        static uint32_t last_prediction_time_ms_ = 0;
        uint32_t current_time_ms = sleep_timer_read_ms();

        /** For classes CLASS_LABEL_ROTATION_RIGHT & CLASS_LABEL_ROTATION_LEFT there is no timeout,
         * since the movements must be repetitive in time
         */
        if ((class_label == CLASS_LABEL_ROTATION_RIGHT) ||
            (class_label == CLASS_LABEL_ROTATION_LEFT) ||
            ((current_time_ms - last_prediction_time_ms_) > PREDICTION_TIMEOUT_MS)
            )
        {
            last_prediction_time_ms_ = current_time_ms;

            printf("Predicted %s %d %%\r\n", class_name, (int8_t)(probability * 100.0f));
        }
    }
}