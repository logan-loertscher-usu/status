call config.bat

powershell "$fitstatUSB= new-Object System.IO.Ports.SerialPort %FITSTAT_PORT%; $fitstatUSB.open(); $fitstatUSB.WriteLine('#00FFFF'); $fitstatUSB.Close()"