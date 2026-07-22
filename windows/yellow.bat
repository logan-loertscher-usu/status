call config.bat

powershell "$fitstatUSB= new-Object System.IO.Ports.SerialPort %FITSTAT_PORT%; $fitstatUSB.open(); $fitstatUSB.WriteLine('B#FF6600-0600#000000-0200'); $fitstatUSB.Close()"
echo B#FF6600-0600#000000-0200 > \.\\COM3