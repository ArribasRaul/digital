
#include "ap_int.h"

#include "ap_fixed.h"

#include "filtro.h"
#include "fir.h"


#define D 64
#define N 5



data_t cic(ap_fixed<16,2> ENTRADA[64])
{
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS INTERFACE axis register both port=ENTRADA
	static data_t inte[N] , deriv[N] ;

	data_t tmp,sum ;

L1:for ( int di = 0; di<D ;di++)

	#pragma HLS PIPELINE II=1
	L2:for ( int i = 0; i<N ;i++) {

			if ( i== 0 ) {
				sum = inte[i] +ENTRADA[di] ;
				inte[i] = sum ;
			}
			else {
				sum = inte[i] + sum ;
				inte[i] = sum ;

			}
		}

L3:for ( int i = 0; i<N ;i++) {
#pragma HLS UNROLL

			tmp = deriv[i] ;
			deriv[i] = sum ;
			sum = sum - tmp;
		}


return(sum) ;

}


adc_t  sistema(adc_t ENTRADA[D]){
	data_t salida_cic;
	salida_cic = cic(ENTRADA);

	salida_cic = salida_cic / 2^30;


	adc_t salida_fir_1;
	adc_t salida_fir_2;
	adc_t salida_cic_adc_t = salida_cic;

	ap_fixed<24,-1> coeff_1[21]={
#include "coefCFIR.h"
	};
#pragma HLS RESOURCE variable=coeff_1 core=ROM_2P_BRAM

	//FIR<21>(salida_cic_adc_t, &salida_fir_1, coeff_1);

	FIR_21(salida_cic_adc_t, &salida_fir_1, coeff_1);

	ap_fixed<24,-1> coeff_2[63]={
#include "coefPFIR.h"
	};
#pragma HLS RESOURCE variable=coeff_1 core=ROM_2P_BRAM

	//FIR<63>(salida_fir_1, &salida_fir_2, coeff_2);

	FIR_63(salida_fir_1, &salida_fir_2, coeff_2);

	adc_t salida = salida_fir_2 * salida_fir_2;

	return salida;
}
