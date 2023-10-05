# Status via fit statUSB
Parts List (not affiliate links)
- [fit statUSB light](https://www.amazon.com/gp/product/B07CKFLQ5V/ref=ox_sc_act_title_1?smid=A3J2VUK9571N8X&psc=1) | [Manufacturer Docs](http://fit-pc.com/wiki/index.php/Fit-statUSB)
  - [price history ](https://camelcamelcamel.com/product/B07CKFLQ5V)
- [USB extension cable](https://www.amazon.com/gp/product/B097Q99K1P/ref=ox_sc_act_title_2?smid=A1HTDKRQ0FE20L&psc=1) or similar
- [Gooseneck USB (optional)](https://www.amazon.com/gp/product/B003PFBB4G/ref=ewc_pr_img_1?smid=A32IO94WFN2NEL&psc=1) or similar   
   
There are currently 4 status options    
- red (do not disturb)
- green (available)
- blue (in a meeting)
- purple (away)  
  
![til](./demo.gif)

## Windows Setup
1. Download and unzip the Windows zip file ([win10](https://github.com/jordestay/status/raw/main/windows/status-light.zip) | [win11](https://github.com/jordestay/status/raw/main/windows/status-light-win11.zip)) containing
    - red-dnd.bat
    - green-available.bat
    - blue-meeting.bat
    - purple-away.bat
2. Find the serial port of the LED
    - Open terminal (`⊞ + R`, type `cmd` and press `Enter`) and run `mode` to return the serial ports
    - Scroll until you see `Status for device COM##:`. This is the USB!
    - Copy the port name `COM##`  
    - add it to each of the command files by opening them in Notepad or similar and replacing `##`
3. Double click any batch file to see the status light change
## Mac Setup
1. Download and unzip the [Mac zip file](https://github.com/jordestay/status/raw/main/mac/status-light.zip) containing
    - red-dnd.command
    - green-available.command
    - blue-meeting.command
    - purple-away.command
2. Find the serial port of the LED
    - Open terminal and run `ls /dev`
    - Scroll until you see `/dev/cu.usbmodem####`
    - Get the ending number `####`
    - add it to the command files by opening in `nano` or similar code editor and replacing `##`
3. Give executing access to each command
    - In terminal, `cd` the directory containing the command files
        - `chmod a+x red-dnd.command`
        - `chmod a+x green-available.command`
        - `chmod a+x blue-meeting.command`
        - `chmod a+x purple-away.command`
4. Set up the files to always open in terminal
    - In the File Explorer, select `options` and then `open with`, then select `terminal`
    - Click yes through the following popups
5. Double click any command file to see the status light change
    - The command does not currently execute silently, a terminal window opens every time a command is clicked. These can be closed at any time.
## Linux Setup
If you are on Linux, you know what to do... Here is [some documentation](https://www.fit-iot.com/forum/viewtopic.php?f=175&t=6335&p=21219&hilit=linux#p21219) to get started on your DIY journey.
### Ubuntu Setup
Welcome, DIY adventure penguin! 🐧 - noot noot!
1. Install minicom ([doc](https://help.ubuntu.com/community/Minicom)) `sudo apt-get install minicom`
2. Find the serial port name `dmesg | grep tty` and copy it for step 3 (eg. ttyS0 or ttyACM0)
3. `sudo minicom -s`, choose `A - Serial Device` and set it to `/dev/PASTE_SERIAL_PORT`
4. Exit minicom via `ctrl + A` then `X`, then run `sudo minicom` then simply enter `#hexcode` to change status
    - Red (DND) `B#FF0000-0600#000000-0200`
    - Green (available) `#00FF00`
    - Purple (away) `#FF0066`
    - Blue (meeting) `#00FFFF`
## Development
### Windows
- Fetch serial port automatically on startup
- Add port number to batch files automatically on startup
- Refactor into a light desktop app
### Mac
- Execute commands silently
- Fetch serial port automatically on startup
- Add port number to command files automatically on startup
- Preset the execute access
- Default open files with terminal (consider other filetypes)
- Refactor into a light MacOS app
### Slack Integration
Change status light depending on your slack status
- [Slack App - in dev](https://api.slack.com/apps/A04UG8CB3HS)
### Future Status Options
- Setting schedules
- RGB cycle (party)
- yellow
- yellow pulsing
- red-blue (police)
- random ("screensaver")
- pulse intervals
- pulsing between statuses
