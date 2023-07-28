GNU_ARM = arm-none-eabi-gcc

MCPU = cortex-m4
MARCH = armv7e-m
OPT_LEVEL = 0
LinkerScript_F = tm4c123gh6pm.lds
MapFile_Name = app.map
GNU_ARM_FALGS = -mcpu=$(MCPU) -march=$(MARCH) -mthumb -save-temps -nostdlib -O$(OPT_LEVEL) -Xlinker -Map="$(MapFile_Name)" -T "$(LinkerScript_F)"                      

ProjectName = app_out.elf

SOURCES = $(wildcard *.c) #get all c files names and save it on "SOURCE"
OBJECTS = $(patsubst %.c,%.o,$(SOURCES)) #change .c to .o and save it on "OBJECTS"
INCS = -I .

all: $(ProjectName)
	@echo "===Build is done==="


$(ProjectName): $(OBJECTS) 
	$(GNU_ARM) $(GNU_ARM_FALGS) -o $@ $(OBJECTS)

%.o: %.c 
	$(GNU_ARM) -c -o $@ $<

#Execute even if not updated = execute even if no change
.PHONY: cleanall cleanobj

cleanall : cleanobj 
	del *.exe

cleanobj :
	del *.o	
