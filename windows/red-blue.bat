call _config.bat

powershell "$fitstatUSB= new-Object System.IO.Ports.SerialPort %FITSTAT_PORT%; $fitstatUSB.open(); $fitstatUSB.WriteLine('B#FF0000-0200#000000-0020#0000FF-0200#000000-0020'); $fitstatUSB.Close()"