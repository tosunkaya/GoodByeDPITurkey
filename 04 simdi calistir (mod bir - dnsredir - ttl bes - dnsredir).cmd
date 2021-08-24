@ECHO OFF
PUSHD "%~dp0"
set _arch=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set _arch=x86_64)
IF DEFINED PROCESSOR_ARCHITEW6432 (set _arch=x86_64)
PUSHD "%_arch%"

start "" goodbyedpi.exe -1 --dns-addr 1.1.1.1 --dns-port 1253 --dnsv6-addr 2606:4700:4700::1111 --dnsv6-port 1253 --wrong-chksum --set-ttl 5

POPD
POPD
