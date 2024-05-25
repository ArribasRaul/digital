#include "ap_int.h"
#include "filtro.h"

#include "ap_fixed.h"



//typedef ap_fixed<14,2> adc_t ;

//typedef float adc_t ;


template <typename T, const int max_size> void FIR (adc_t ENTRADA, adc_t *SALIDA, T coeff);
