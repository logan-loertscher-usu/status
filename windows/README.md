# Status for Windows
1. Download and unzip the status-light.zip file containing
   - config.bat
   - red.bat
   - green.bat
   - blue.bat
   - purple.bat
   - yellow.bat
   - red-blue.bat
   - party.bat
2. Find the serial port of the LED
    - Open terminal (`⊞ + R`, type `cmd` and press `Enter`) and run `mode` to return the serial ports
    - Scroll until you see `Status for device COM##:`. This is the USB!
    - Copy the port name `COM##`  
    - add it to config.bat by opening it in Notepad or similar and replacing `##`
3. Double click any batch file to see the status light change
