@ECHO OFF

adb shell am start -a android.media.action.STILL_IMAGE_CAMERA

for /l %%i in (1,1,1) do (
  choice /t 2 /d y /n >nul 
  adb shell input keyevent 27
  @echo %%i
)
choice /t 1 /d y /n >nul 
adb shell input keyevent 4
adb shell input keyevent 4

echo Íê³É

@ECHO ON
