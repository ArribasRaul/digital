#include "ap_int.h"

#include "ap_fixed.h"

#define D 64
#define N 5

typedef ap_fixed<46,32,AP_TRN,AP_WRAP> data_t;
typedef ap_fixed<16,2> adc_t ;


data_t cic(adc_t *) ;
adc_t  sistema(adc_t *) ;
