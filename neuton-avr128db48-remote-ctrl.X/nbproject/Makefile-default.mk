#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=app/icm42688_sensor.c app/sleep_timer.c main.c app/inference_postprocessing.c drivers/icm426xx/Icm426xxDriver_HL.c drivers/icm426xx/Icm426xxDriver_HL_apex.c drivers/icm426xx/Icm426xxSelfTest.c drivers/icm426xx/Icm426xxTransport.c mcc_generated_files/spi/src/spi0.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/tca/src/tca0.c mcc_generated_files/timer/src/delay.c mcc_generated_files/timer/src/rtc.c mcc_generated_files/uart/src/usart3.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/icm42688_sensor.o ${OBJECTDIR}/app/sleep_timer.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app/inference_postprocessing.o ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o ${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o ${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o ${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/icm42688_sensor.o.d ${OBJECTDIR}/app/sleep_timer.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/app/inference_postprocessing.o.d ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o.d ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o.d ${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o.d ${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o.d ${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/icm42688_sensor.o ${OBJECTDIR}/app/sleep_timer.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app/inference_postprocessing.o ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o ${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o ${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o ${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o

# Source Files
SOURCEFILES=app/icm42688_sensor.c app/sleep_timer.c main.c app/inference_postprocessing.c drivers/icm426xx/Icm426xxDriver_HL.c drivers/icm426xx/Icm426xxDriver_HL_apex.c drivers/icm426xx/Icm426xxSelfTest.c drivers/icm426xx/Icm426xxTransport.c mcc_generated_files/spi/src/spi0.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/tca/src/tca0.c mcc_generated_files/timer/src/delay.c mcc_generated_files/timer/src/rtc.c mcc_generated_files/uart/src/usart3.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=AVR128DB48
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/app/icm42688_sensor.o: app/icm42688_sensor.c  .generated_files/flags/default/92923aa27ae2a9de61bde9aa79f5a35eb74f2c63 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/icm42688_sensor.o.d 
	@${RM} ${OBJECTDIR}/app/icm42688_sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/app/icm42688_sensor.o.d" -MT "${OBJECTDIR}/app/icm42688_sensor.o.d" -MT ${OBJECTDIR}/app/icm42688_sensor.o -o ${OBJECTDIR}/app/icm42688_sensor.o app/icm42688_sensor.c 
	
${OBJECTDIR}/app/sleep_timer.o: app/sleep_timer.c  .generated_files/flags/default/307892cc29c64f341de8d377e60df9306bff36fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/sleep_timer.o.d 
	@${RM} ${OBJECTDIR}/app/sleep_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/app/sleep_timer.o.d" -MT "${OBJECTDIR}/app/sleep_timer.o.d" -MT ${OBJECTDIR}/app/sleep_timer.o -o ${OBJECTDIR}/app/sleep_timer.o app/sleep_timer.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/6eeaddb5c687c01f5159d5a397810a6c179515e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/app/inference_postprocessing.o: app/inference_postprocessing.c  .generated_files/flags/default/ce037fff69e33bfe9fcfb8c4e9cbb4863f9edbc4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/inference_postprocessing.o.d 
	@${RM} ${OBJECTDIR}/app/inference_postprocessing.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/app/inference_postprocessing.o.d" -MT "${OBJECTDIR}/app/inference_postprocessing.o.d" -MT ${OBJECTDIR}/app/inference_postprocessing.o -o ${OBJECTDIR}/app/inference_postprocessing.o app/inference_postprocessing.c 
	
${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o: drivers/icm426xx/Icm426xxDriver_HL.c  .generated_files/flags/default/e43fe4ef2af658b69868f0ad6dcc110696ef1510 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/drivers/icm426xx" 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o.d 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o.d" -MT "${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o.d" -MT ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o -o ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o drivers/icm426xx/Icm426xxDriver_HL.c 
	
${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o: drivers/icm426xx/Icm426xxDriver_HL_apex.c  .generated_files/flags/default/74afd1cd57b08ff779c896835b983d2f2c776d36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/drivers/icm426xx" 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o.d 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o.d" -MT "${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o.d" -MT ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o -o ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o drivers/icm426xx/Icm426xxDriver_HL_apex.c 
	
${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o: drivers/icm426xx/Icm426xxSelfTest.c  .generated_files/flags/default/c5464defb135e842b81b9769107d563f8c657dc0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/drivers/icm426xx" 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o.d 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o.d" -MT "${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o.d" -MT ${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o -o ${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o drivers/icm426xx/Icm426xxSelfTest.c 
	
${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o: drivers/icm426xx/Icm426xxTransport.c  .generated_files/flags/default/5bf429127db4f79afc272ce4f78e3f590b077f04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/drivers/icm426xx" 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o.d 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o.d" -MT "${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o.d" -MT ${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o -o ${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o drivers/icm426xx/Icm426xxTransport.c 
	
${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o: mcc_generated_files/spi/src/spi0.c  .generated_files/flags/default/3b06113effa33c3fd77e56020190b526491d1292 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/spi/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o -o ${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o mcc_generated_files/spi/src/spi0.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/7baf0af7f6d95ff2a233ada02b389614afacd97e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/50340383ecceed8e6a2071ff1d677f30719a9a13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/d1dc1e5833b2d36319f77b2e7f6d5a86b0747967 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/24d503c7c0bb29090995c403b4474a8a74acb7ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/d7c19de06ca28d09ffbb74c1f69ea532990d923 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o: mcc_generated_files/tca/src/tca0.c  .generated_files/flags/default/2498d2512aa1380c792a133f946cfdac4fd00bc9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/tca/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o -o ${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o mcc_generated_files/tca/src/tca0.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.o: mcc_generated_files/timer/src/delay.c  .generated_files/flags/default/e142d9df515f11b97537aec3ad5b5c6c4ad7f2c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o mcc_generated_files/timer/src/delay.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o: mcc_generated_files/timer/src/rtc.c  .generated_files/flags/default/5241d8c465bfa6da047f8349fd9eadcd4a53fde0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o mcc_generated_files/timer/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o: mcc_generated_files/uart/src/usart3.c  .generated_files/flags/default/a6100bd888c8a275e2fd00ee8037e241cf7a6cbe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o mcc_generated_files/uart/src/usart3.c 
	
else
${OBJECTDIR}/app/icm42688_sensor.o: app/icm42688_sensor.c  .generated_files/flags/default/9724d2dec348ce40afce935c4e9095a4d66eb543 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/icm42688_sensor.o.d 
	@${RM} ${OBJECTDIR}/app/icm42688_sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/app/icm42688_sensor.o.d" -MT "${OBJECTDIR}/app/icm42688_sensor.o.d" -MT ${OBJECTDIR}/app/icm42688_sensor.o -o ${OBJECTDIR}/app/icm42688_sensor.o app/icm42688_sensor.c 
	
${OBJECTDIR}/app/sleep_timer.o: app/sleep_timer.c  .generated_files/flags/default/72de28e0015a0679047d99c296251e321d663b30 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/sleep_timer.o.d 
	@${RM} ${OBJECTDIR}/app/sleep_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/app/sleep_timer.o.d" -MT "${OBJECTDIR}/app/sleep_timer.o.d" -MT ${OBJECTDIR}/app/sleep_timer.o -o ${OBJECTDIR}/app/sleep_timer.o app/sleep_timer.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f3878c736d7242e2af619ba3e8bc0c7aedb8760d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/app/inference_postprocessing.o: app/inference_postprocessing.c  .generated_files/flags/default/91caa3ca27302ac9ae7c04c86ef230a9d6818886 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/inference_postprocessing.o.d 
	@${RM} ${OBJECTDIR}/app/inference_postprocessing.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/app/inference_postprocessing.o.d" -MT "${OBJECTDIR}/app/inference_postprocessing.o.d" -MT ${OBJECTDIR}/app/inference_postprocessing.o -o ${OBJECTDIR}/app/inference_postprocessing.o app/inference_postprocessing.c 
	
${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o: drivers/icm426xx/Icm426xxDriver_HL.c  .generated_files/flags/default/69da4dc6a22f99916ce7d986217a30a35360bdb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/drivers/icm426xx" 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o.d 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o.d" -MT "${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o.d" -MT ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o -o ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL.o drivers/icm426xx/Icm426xxDriver_HL.c 
	
${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o: drivers/icm426xx/Icm426xxDriver_HL_apex.c  .generated_files/flags/default/e1670678b0d4e0f155bf488a311e06c459829d5a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/drivers/icm426xx" 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o.d 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o.d" -MT "${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o.d" -MT ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o -o ${OBJECTDIR}/drivers/icm426xx/Icm426xxDriver_HL_apex.o drivers/icm426xx/Icm426xxDriver_HL_apex.c 
	
${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o: drivers/icm426xx/Icm426xxSelfTest.c  .generated_files/flags/default/67eefec0f6d0e485a3ae5cd951660c849ff8b6c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/drivers/icm426xx" 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o.d 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o.d" -MT "${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o.d" -MT ${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o -o ${OBJECTDIR}/drivers/icm426xx/Icm426xxSelfTest.o drivers/icm426xx/Icm426xxSelfTest.c 
	
${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o: drivers/icm426xx/Icm426xxTransport.c  .generated_files/flags/default/b6e4caef2e1cf2469027622cdee626d0d66848bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/drivers/icm426xx" 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o.d 
	@${RM} ${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o.d" -MT "${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o.d" -MT ${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o -o ${OBJECTDIR}/drivers/icm426xx/Icm426xxTransport.o drivers/icm426xx/Icm426xxTransport.c 
	
${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o: mcc_generated_files/spi/src/spi0.c  .generated_files/flags/default/1f2ab9c3df576be8f392a1e4be4688211019021b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/spi/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o -o ${OBJECTDIR}/mcc_generated_files/spi/src/spi0.o mcc_generated_files/spi/src/spi0.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/b0129c3708c8570d6e9433eed67b1cdbc0b88035 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/8c90170d2b6d0aad7e1b6e34b95fa955fcf317ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/4cb4d5070ab5f5ec1510e543cf2290b47f7c04c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/b1095123abf79388fd9f22e189447f4b9435715d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/f4e6243b94d6c036d0c978641c69ba6d25159685 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o: mcc_generated_files/tca/src/tca0.c  .generated_files/flags/default/ae324177a7084895f9aad4ffc9a6f3a9c3b5d6ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/tca/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o -o ${OBJECTDIR}/mcc_generated_files/tca/src/tca0.o mcc_generated_files/tca/src/tca0.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.o: mcc_generated_files/timer/src/delay.c  .generated_files/flags/default/b230edc5f474744dd87248b4849f1f6ff15b55e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o mcc_generated_files/timer/src/delay.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o: mcc_generated_files/timer/src/rtc.c  .generated_files/flags/default/28f24bde08f02167d2429f6a234a6390d2fbd34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o mcc_generated_files/timer/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o: mcc_generated_files/uart/src/usart3.c  .generated_files/flags/default/b86254564ef846c4907f9ecc852b65deefb79fd2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart3.o mcc_generated_files/uart/src/usart3.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/c0d234d267ddb91ab019277fda3f3486121d4235 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/911e82eb6d212134faa8bc99f7526d05cac4a862 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall -DXPRJ_default=$(CND_CONF)   -L"neuton_lib/neuton/lib" -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall  -L"neuton_lib/neuton/lib" -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,-lneuton_avr128db48 -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -DICM42688 -I"mcc_generated_files" -I"drivers/icm426xx" -I"neuton_lib/neuton/include" -I"neuton_lib" -I"app" -Wall  -L"neuton_lib/neuton/lib" -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,-lneuton_avr128db48 -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/neuton-avr128db48-remote-ctrl.X.${IMAGE_TYPE}.hex"
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
