
		#include <stdio.h>
		#include <math.h>
		#include "filtro.h"
#define M 64
		int main () {

		  const long    SAMPLES=138687;
		  FILE *fp_in;
		  FILE *fp_out;


		  float dato;
		  adc_t signal[M];
		  data_t output;

		  fp_in=fopen("cic_input.txt","r");
		  if(fp_in == NULL) {
			  printf ("Error adc.txt \n");
			  exit(1) ;
		  }
		  fp_out=fopen("out.dat","w");
		  if(fp_out == NULL) {
			  printf ("Error out.txt \n");
			  exit(1) ;
		  }

		  long i,j;

		  for (i=0;i<SAMPLES/M;i++) {

			for (j=0;j<M;j++) {
				fscanf(fp_in,"%f\n",&dato);
				adc_t tmp = dato;
				signal[j] = tmp;

			}

			output=sistema(signal);


			// Save the results.
		    fprintf(fp_out,"%f\n",(float)output);
		  }
		  fclose(fp_out);
		  fclose(fp_in);

		     return 0;

		}
