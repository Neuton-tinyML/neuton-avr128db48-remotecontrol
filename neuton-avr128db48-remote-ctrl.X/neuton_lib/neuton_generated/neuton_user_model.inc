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


static const neuton_weight_t MODEL_WEIGHTS[] = { 4, 17, 24, -18, 124, -128, 124,
     120, -36, 124, 123, 103, 56, 8, 78, -21, -5, -15, -68, -40, -32, -52, -103,
     104, 41, 124, 21, -32, -43, 8, 88, -12, 10, 25, 52, 9, 20, 57, 17, -18,
     -128, 6, -128, 124, -111, 118, -98, 94, -111, 91, -24, -50, -4, 109, 5,
     -122, 93, -66, -68, -128, -59, 100, 125, -128, -128, 79, -32, -54, 71, 42,
     -50, 61, -126, -63, 124, 16, 28, 61, 126, 1, -115, 14, -115, -126, 110,
     3, -128, 6, -87, 36, 124, -15, -52, 13, 21, 25, 67, 82, 117, 15, -128, -63,
     -128, 0, 125, -9, 115, -5, -122, 62, -123, 105, 93, -39, -128, 30, 12, -128,
     44, 124, -56, -6, 53, 103, 19, 53, 67, -122, -56, 125, 77, -113, 18, -31,
     43, 93, -128, -2, 76, -127, 11, 113, -117, 0, 125, 0, 0, -72, 8, 18, 24,
     111, 98, -104, 42, -34, -45, -37, 79, -124, 44, -128, 125, -128, -65, -36,
     -50, -61, -85, 125, 37, 116, 126, -122, -110, 123, 124, 7, -128, -128, -128,
     67, -74, 110, 12, -87, 14, -2, -9, -7, 123, -124, 41, -103, -3, -128, 91,
     -94, 92, -59, 49, -90, -128, 24, 75, 127, -128, -128, -111, -58, -86, -45,
     -53, 90, 125, -128, -128, -128, 125, -128, 125, -128, -128, 125, -128, -35,
     82, -10, 37, -128, 123, -128, -71, 126, -128, -128, -79, 125, -5, 105, -116,
     -18, -128, 124, -128, 24 };

static const neuton_sources_num_t MODEL_LINKS[] = { 0, 1, 5, 9, 10, 15, 18, 19,
     24, 28, 29, 31, 0, 0, 1, 2, 3, 5, 6, 9, 11, 20, 25, 26, 31, 1, 0, 1, 2,
     7, 10, 14, 15, 16, 21, 22, 23, 24, 26, 31, 1, 0, 4, 7, 10, 12, 14, 22, 31,
     3, 31, 3, 4, 6, 8, 15, 16, 18, 19, 27, 28, 31, 0, 3, 4, 6, 15, 17, 30, 31,
     2, 6, 2, 3, 6, 11, 12, 15, 17, 18, 24, 25, 31, 0, 1, 2, 9, 31, 0, 1, 8,
     0, 1, 5, 19, 31, 2, 5, 21, 22, 24, 27, 31, 31, 2, 6, 5, 14, 31, 6, 7, 3,
     7, 8, 17, 22, 31, 1, 6, 9, 0, 1, 5, 6, 7, 11, 13, 31, 0, 9, 5, 7, 31, 6,
     14, 0, 5, 31, 0, 4, 5, 6, 31, 31, 5, 11, 18, 31, 1, 2, 7, 4, 5, 6, 10, 31,
     2, 0, 1, 2, 31, 2, 2, 4, 19, 31, 0, 1, 6, 17, 0, 5, 12, 31, 0, 9, 23, 31,
     8, 9, 15, 0, 1, 4, 5, 9, 22, 24, 28, 31, 15, 4, 9, 28, 31, 3, 6, 9, 13,
     31, 7, 27, 7, 23, 31, 6, 12, 28, 31, 9, 11, 13, 21, 31, 1, 8, 14, 15, 16,
     17, 20, 21, 22, 25, 26, 27, 30, 31, 7, 14, 17, 29, 31, 7, 13, 32, 31, 1,
     2, 3, 18, 31, 2, 10, 34, 31 };

static const neuton_weights_num_t MODEL_INTERNAL_LINKS_BOUNDARIES[] = { 0, 13,
     26, 41, 50, 51, 62, 72, 85, 91, 97, 103, 106, 111, 120, 130, 135, 138, 143,
     147, 151, 157, 162, 170, 177, 181, 191, 197, 202, 208, 209, 227, 230, 236,
     240, 245 };

static const neuton_weights_num_t MODEL_EXTERNAL_LINKS_BOUNDARIES[] = { 12, 25,
     40, 49, 51, 62, 70, 83, 88, 96, 103, 104, 109, 117, 128, 133, 138, 143,
     144, 148, 156, 161, 166, 174, 178, 190, 195, 200, 205, 209, 214, 228, 233,
     237, 242, 246 };

static const neuton_coeff_t MODEL_ACTIVATION_COEFFS[] = { 128, 128, 128, 128,
     148, 128, 128, 128, 116, 48, 128, 120, 128, 124, 116, 116, 116, 116, 120,
     158, 116, 128, 128, 116, 157, 128, 128, 128, 96, 143, 128, 160, 116, 157,
     116, 156 };

static const neuton_u8_t MODEL_ACTIVATION_TYPE_MASK[] = { 0xef, 0xff, 0xf7, 0x5e,
     0x05 };

static const neuton_neurons_num_t MODEL_OUTPUT_NEURONS[] = { 24, 31, 35, 4, 19,
     29, 33 };

