## Complitation Commands

# the default command which not working
arm-none-eabi-gcc -mcpu=cortex-m4 -march=armv7e-m -mthumb -save-temps -nostdlib -O0 wl,-Map,"app.map" wl,-T"tm4c123gh6pm.lds" app_main.c app_2.c -o app_output.elf

arm-none-eabi-gcc -mcpu=cortex-m4 -march=armv7e-m -mthumb -save-temps nostdlib -o0 -wl,-Map,"app.map" -wl,-T"tm4c123gh6pm.lds" app_main.c app_2.c -o app_out.elf


# But this command is working

arm-none-eabi-gcc -mcpu=cortex-m4 -march=armv7e-m -mthumb -save-temps -nostdlib -O0 -Xlinker -Map="app.map" -T "tm4c123gh6pm.lds" app_main.c app_2.c -o app_output.elf