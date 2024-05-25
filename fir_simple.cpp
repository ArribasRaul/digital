#include "fir.h"


inline adc_t get_memoria(adc_t *mem, int size, int offset, int i){
    int pos = offset + i;
    if (pos > size - 1){
        pos = pos - size;
    }else if (pos < 0){
        pos = size + pos;
    }
    return mem[pos];
}


template <const int max_size> void FIR (adc_t ENTRADA, adc_t *SALIDA, ap_fixed<24,-1>* coeff)
{
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS INTERFACE ap_ovld register port=SALIDA
#pragma HLS INTERFACE ap_vld port=ENTRADA

	static adc_t mem[max_size];
#pragma HLS RESOURCE variable=mem core=RAM_2P_BRAM

	static  ap_fixed<39,4,AP_TRN,AP_WRAP> acc ; // ganancia maxima 2.36
		acc = 0 ;

		static int offset = 0;

		Shift_Accum_Loop_FIR: for (int i=max_size-1;i > 0;i--)
		{
#pragma HLS PIPELINE
			acc += (coeff[i] * get_memoria(mem, max_size, offset, i));
		}

		mem[offset] = ENTRADA ;
		acc += (coeff[0] * ENTRADA);

		offset --;

		if (offset < 0){
			offset = max_size-1;
		}

		*SALIDA = (adc_t)acc ;
}

void FIR_63 (adc_t ENTRADA, adc_t *SALIDA, ap_fixed<24,-1>* coeff)
{
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS INTERFACE ap_ovld register port=SALIDA
#pragma HLS INTERFACE ap_vld port=ENTRADA

	static adc_t mem[63];
#pragma HLS RESOURCE variable=mem core=RAM_2P_BRAM

	static  ap_fixed<39,4,AP_TRN,AP_WRAP> acc ; // ganancia maxima 2.36
		acc = 0 ;

		static int offset = 0;

		Shift_Accum_Loop_FIR: for (int i=63-1;i > 0;i--)
		{
#pragma HLS PIPELINE
			acc += (coeff[i] * get_memoria(mem, 63, offset, i));
		}

		mem[offset] = ENTRADA ;
		acc += (coeff[0] * ENTRADA);

		offset --;

		if (offset < 0){
			offset = 63-1;
		}

		*SALIDA = (adc_t)acc ;
}

void FIR_21 (adc_t ENTRADA, adc_t *SALIDA, ap_fixed<24,-1>* coeff)
{
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS INTERFACE ap_ovld register port=SALIDA
#pragma HLS INTERFACE ap_vld port=ENTRADA

	static adc_t mem[21];
#pragma HLS RESOURCE variable=mem core=RAM_2P_BRAM

	static  ap_fixed<39,4,AP_TRN,AP_WRAP> acc ; // ganancia maxima 2.36
		acc = 0 ;

		static int offset = 0;

		Shift_Accum_Loop_FIR: for (int i=21-1;i > 0;i--)
		{
#pragma HLS PIPELINE
			acc += (coeff[i] * get_memoria(mem, 21, offset, i));
		}

		mem[offset] = ENTRADA ;
		acc += (coeff[0] * ENTRADA);

		offset --;

		if (offset < 0){
			offset = 21-1;
		}

		*SALIDA = (adc_t)acc ;
}


