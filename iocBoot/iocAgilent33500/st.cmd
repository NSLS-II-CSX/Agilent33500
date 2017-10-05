#!../../bin/linux-x86_64/Agilent33500

## You may have to change Agilent33500 to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Agilent33500.dbd"
Agilent33500_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=swilkinsHost")

cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=swilkinsHost"
