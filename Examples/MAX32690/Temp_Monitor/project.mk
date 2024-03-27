# This file can be used to set build configuration
# variables.  These variables are defined in a file called
# "Makefile" that is located next to this one.

# For instructions on how to use this system, see
# https://analogdevicesinc.github.io/msdk/USERGUIDE/#build-system

# **********************************************************

# If you have secure version of MCU, set SBT=1 to generate signed binary
# For more information on how sing process works, see
# https://www.analog.com/en/education/education-library/videos/6313214207112.html
SBT=0

# Include MAX31889 drivers from MiscDrivers library.
SRCS+=max31889_driver.c

VPATH+=$(LIBS_DIR)/MiscDrivers/TempSensor
IPATH+=$(LIBS_DIR)/MiscDrivers/TempSensor

# The APARD does not provision for a 1.8V I2C bus as required by this example
ifeq ($(BOARD),APARD)
$(error ERR_NOTSUPPORTED: This project is not supported for the AD-APARD32690 board)
endif
