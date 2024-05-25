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


template <typename T, const int max_size> void FIR (adc_t ENTRADA, adc_t *SALIDA, T coeff)
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
