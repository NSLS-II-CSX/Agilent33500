TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Agilent33500
# Agilent33500.dbd will be created and installed
DBD += Agilent33500.dbd

# Agilent33500.dbd will be made up from these files:
Agilent33500_DBD += base.dbd

# Include dbd files from all support applications:
Agilent33500_DBD += caPutLog.dbd
Agilent33500_DBD += asyn.dbd
Agilent33500_DBD += stream.dbd
Agilent33500_DBD += drvAsynIPPort.dbd
Agilent33500_DBD += drvAsynSerialPort.dbd
Agilent33500_DBD += system.dbd
Agilent33500_DBD += asSupport.dbd
Agilent33500_DBD += devIocStats.dbd

# Add all the support libraries needed by this IOC
Agilent33500_LIBS += caPutLog
Agilent33500_LIBS += stream
Agilent33500_LIBS += asyn
Agilent33500_LIBS += devIocStats
Agilent33500_LIBS += autosave

# Agilent33500_registerRecordDeviceDriver.cpp derives from Agilent33500.dbd
Agilent33500_SRCS += Agilent33500_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Agilent33500_SRCS_DEFAULT += Agilent33500Main.cpp
Agilent33500_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Agilent33500_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Agilent33500_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

