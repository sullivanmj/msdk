# This file can be used to set build configuration
# variables.  These variables are defined in a file called 
# "Makefile" that is located next to this one.

# For instructions on how to use this system, see
# https://analogdevicesinc.github.io/msdk/USERGUIDE/#build-system

# **********************************************************

# Add your config here!

# This example is only compatible with the MAX32655EVKIT
ifneq ($(BOARD),EvKit_V1)
$(error ERR_NOTSUPPORTED: This project is only supported on the MAX32655EVKIT.  (see https://analogdevicesinc.github.io/msdk/USERGUIDE/#board-support-packages))
endif

# Include temperature sensor driver
SRCS+=max31889_driver.c

VPATH+=$(LIBS_DIR)/MiscDrivers/TempSensor
IPATH+=$(LIBS_DIR)/MiscDrivers/TempSensor
