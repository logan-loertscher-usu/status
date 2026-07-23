call _config.bat

powershell "$fitstatUSB= new-Object System.IO.Ports.SerialPort %FITSTAT_PORT%; $fitstatUSB.open(); $fitstatUSB.WriteLine('B#FF0000-0100#00FF00-0100#0000FF-0100'); $fitstatUSB.Close()"