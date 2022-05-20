FROM mcr.microsoft.com/windows/servercore:ltsc2022
RUN Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "thanfees12" -Force)
RUN Get-LocalUser -Name "Administrator" | Enable-LocalUser 
RUN Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
RUN tar xf ngrok.zip
RUN Copy ngrok.exe C:\Windows\System32
RUN cmd /c echo ./ngrok.exe authtoken "29NkmnfalCpw3O2UGu752AVwMr8_77kPqtRjB14sK6d731jrD" >a.ps1
RUN cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
RUN cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
RUN .\a.ps1
