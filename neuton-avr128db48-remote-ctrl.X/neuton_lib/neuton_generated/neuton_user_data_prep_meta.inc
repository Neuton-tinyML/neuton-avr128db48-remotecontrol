/* 2024-04-19T16:10:43Z */

/* ----------------------------------------------------------------------
Copyright (c) 2022-2023 Neuton.AI, Inc.
*
The source code and its binary form are being made available on the following terms:
Redistribution, use, and modification are permitted provided that the following
conditions are met:
*
1. Redistributions of source code and/or its binary form must retain the above copyright notice,
* this list of conditions (and the disclaimer) either in the body of the source code or in
* the documentation and/or other materials provided with the distribution of the binary form, as
applicable.
*
2. The name of the copyright holder may not be used to endorse or promote products derived from this
* source code or its binary form without specific prior written permission of Neuton.AI, Inc.
*
3. Disclaimer. THIS SOURCE CODE AND ITS BINARY FORM ARE PROVIDED BY THE COPYRIGHT HOLDER "AS IS".
* THE COPYRIGHT HOLDER HEREBY DISCLAIMS ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,
* BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
* PARTICULAR PURPOSE. IN NO EVENT SHALL THE COPYRIGHT HOLDER BE HELD LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; INFRINGEMENT OF INTELLECTUAL PROPERTY RIGHTS
* OF THIRD PARTIES; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
* WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
* IN ANY WAY OUT OF THE USE OF THIS SOURCE CODE OR ITS BINARY FORM, EVEN IF ADVISED OF THE
* POSSIBILITY OF SUCH DAMAGE.
---------------------------------------------------------------------- */

/** Defines input(also used for LAG) features MIN scaling factor
 */
static const neuton_input_t INPUT_FEATURES_SCALE_MIN[] = { -32768 };

/** Defines input(also used for LAG) features MAX scaling factor
 */
static const neuton_input_t INPUT_FEATURES_SCALE_MAX[] = { 32767 };

/** Defines which unique input features is used for LAG features processing,
 *  one bit for one unique feature, starting from LSB
 */
static const neuton_u8_t INPUT_FEATURES_USED_FOR_LAGS_MASK[] = { 0x00 };

/** Defines feature extraction masks used as neuton_nn_features_mask_t,
 *  64 bit for one unique input feature, @ref neuton_nn_features_mask_t to see bitmask
 */
static const neuton_u64_t FEATURES_EXTRACTION_MASK[] = { 0x0000c00b00000000,
     0x0000c01b00000000, 0x0004001a00000000, 0x0000c01b00000000, 0x0000c21300000000,
     0x0000401300000000 };

/** Defines extracted features MIN scaling factor
 */
static const neuton_feature_t EXTRACTED_FEATURES_SCALE_MIN[] = { -32768, -8042,
     -8204, 48, 12, -32768, -16392, -19524, 11, 25, 15, -8144, -13322, 14, 0,
     -32768, -2837, -6510, 2, 5, 3, -32768, -113, 3, 10, 23, 4, -32768, -1687,
     3, 5 };

/** Defines extracted features MAX scaling factor
 */
static const neuton_feature_t EXTRACTED_FEATURES_SCALE_MAX[] = { 14360, 32767,
     17104, 22367, 6288, 15824, 32767, 16032, 20098, 20101, 4973, 32767, 15749,
     14447, 1000, 2185, 32767, 6406, 19103, 19286, 3128, 593, 32767, 21072, 602,
     21160, 4381, 1052, 32767, 23102, 23146 };

