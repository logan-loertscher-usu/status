call _config.bat

powershell "$fitstatUSB= new-Object System.IO.Ports.SerialPort %FITSTAT_PORT%; $fitstatUSB.open(); $fitstatUSB.WriteLine('B#FF0000-0600#000000-0200'); $fitstatUSB.Close()"