################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Chesus/Desktop/FPGATrabajo/TRABAJO/test.cpp 

OBJS += \
./testbench/test.o 

CPP_DEPS += \
./testbench/test.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/test.o: C:/Users/Chesus/Desktop/FPGATrabajo/TRABAJO/test.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado/2018.1/win64/tools/auto_cc/include -IC:/Users/Chesus/Desktop/FPGATrabajo/TRABAJO -IC:/Xilinx/Vivado/2018.1/include/ap_sysc -IC:/Xilinx/Vivado/2018.1/include/etc -IC:/Xilinx/Vivado/2018.1/include -IC:/Xilinx/Vivado/2018.1/win64/tools/systemc/include -IH:/LOCAL/SDA_21_22/TRABAJO -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


