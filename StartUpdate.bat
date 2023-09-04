@echo App Started 
@echo Current update status
sc query wuauserv
@echo Configration changing to "auto"
sc config usosvc start=auto
sc config wuauserv start=auto
@echo Starting update (services/wuauserv)
sc start usosvc
sc start wuauserv
@echo Current update status
sc query wuauserv
sc query usosvc
@echo off
@echo Services : wuauserv , usosvc
set /p X="Enter to exit"
@echo on
