call config.bat

powershell "$fitstatUSB= new-Object System.IO.Ports.SerialPort %FITSTAT_PORT%; $fitstatUSB.open(); $fitstatUSB.WriteLine('#FF0066'); $fitstatUSB.Close()"
echo #FF0066 > \.\\COM3