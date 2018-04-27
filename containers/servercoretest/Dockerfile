FROM microsoft/aspnet:4.7.1-windowsservercore-ltsc2016

# With below base image it does not work, altough it does not report any errors
# FROM microsoft/windowsservercore:1709

SHELL ["powershell"]

COPY fixmums.ps1 .

RUN ./fixmums.ps1

RUN cmd /c 'cd C:\Windows\servicing\Packages & findstr "restart=\"req" *.mum & cd \'; exit 0

RUN Install-WindowsFeature Server-Media-Foundation



