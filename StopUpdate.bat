@echo App Started 
@echo off
sc query wuauserv

sc delete wuauserv
sc stop usosvc

for /L %%i in (1,1,10) do (
    sc stop wuauserv
)

sc config usosvc start=disabled
sc config wuauserv start=disabled
sc query wuauserv
set /p X="Enter to exit"