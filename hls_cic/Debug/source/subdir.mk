################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Chesus/Desktop/FPGATrabajo/TRABAJO/cic.cpp \
C:/Users/Chesus/Desktop/FPGATrabajo/TRABAJO/fir_simple.cpp 

OBJS += \
./source/cic.o \
./source/fir_simple.o 

CPP_DEPS += \
./source/cic.d \
./source/fir_simple.d 


# Each subdirectory must supply rules for building sources it contributes
source/cic.o: C:/Users/Chesus/Desktop/FPGATrabajo/TRABAJO/cic.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado/2018.1/win64/tools/auto_cc/include -IC:/Users/Chesus/Desktop/FPGATrabajo/TRABAJO -IC:/Xilinx/Vivado/2018.1/include/ap_sysc -IC:/Xilinx/Vivado/2018.1/include/etc -IC:/Xilinx/Vivado/2018.1/include -IC:/Xilinx/Vivado/2018.1/win64/tools/systemc/include -IH:/LOCAL/SDA_21_22/TRABAJO -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/fir_simple.o: C:/Users/Chesus/Desktop/FPGATrabajo/TRABAJO/fir_simple.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado/2018.1/win64/tools/auto_cc/include -IC:/Users/Chesus/Desktop/FPGATrabajo/TRABAJO -IC:/Xilinx/Vivado/2018.1/include/ap_sysc -IC:/Xilinx/Vivado/2018.1/include/etc -IC:/Xilinx/Vivado/2018.1/include -IC:/Xilinx/Vivado/2018.1/win64/tools/systemc/include -IH:/LOCAL/SDA_21_22/TRABAJO -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


