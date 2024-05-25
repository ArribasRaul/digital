#include "filtro.h"

template <const int max_size> void FIR (adc_t ENTRADA, adc_t *SALIDA, ap_fixed<24,-1>* coeff);

void FIR_63 (adc_t ENTRADA, adc_t *SALIDA, ap_fixed<24,-1>* coeff);
void FIR_21 (adc_t ENTRADA, adc_t *SALIDA, ap_fixed<24,-1>* coeff);
