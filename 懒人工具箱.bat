@echo off
rem �л��� ArknightsAutoHelper ����λ��
:path
cd>nul 2>nul /D %~dp0

rem ��Ҫѭ����
:main
echo [92m[+] :)��ӭʹ�� ArknightsAutoHelper [0m
echo [92m[+] ���� '1' ��������(Slimģʽ)[0m
echo [92m[+] ���� '2' �Զ�Ѱ��(Handerģʽ)[0m
echo [92m[+] ���� '3' ������ȡ[0m
echo [92m[+] ���� '4' �˳�������[0m
:input
set /p a="[92m[+] ��ѡ����Ҫ�Ĺ��ܣ�[0m"
if /i '%a%'=='1' goto slim
if /i '%a%'=='2' goto as
if /i '%a%'=='3' goto task
if /i '%a%'=='4' goto end
echo [31m[x] �����������������룺[0m & goto input

rem ���ٻ���
:slim
echo [93m[!] ���ڻ��� ArknightsAutoHelper [1m
set /p slim="[94m[i] ����Ԥ��ս��������[0m"
python ArknightsShell.py -s -t slim:%slim%

rem ȷ���Ƿ���������
set /p aah1="[92m[+] ���� '1' ǰ��ǩ�� | ���� '2' �����°� | ����������Ӱࣺ[0m"
if not '%aah1%'=='' set choice=%aah1:~0,1%
if '%aah1%'=='1' goto task
if '%aah1%'=='2' goto end
goto :slim

rem �����嵥
:as
echo [93m[!] ���ڻ��� ArknightsAutoHelper [1m
set /p hander="[94m[i] �����嵥 ���� CE-5:1|LS-5:1 :[0m"
python ArknightsShell.py -b -t "%hander%"

rem ȷ���Ƿ���������
set /p aah1="[92m[+] ���� '1' ǰ��ǩ�� | ���� '2' �����°� | ����������Ӱࣺ[0m"
if not '%aah1%'=='' set choice=%aah1:~0,1%
if '%aah1%'=='1' goto task
if '%aah1%'=='2' goto end
goto as

rem ������ȡ
:task
echo [93m[!] ����׼���ṩ����[1m
python ArknightsShell.py -c

rem ȷ���Ƿ���������
set /p task1="[92m[+] ���� '1' �������� | ����������°ࣺ[0m"
if not '%task1%'=='' set choice=%ctask1:~0,1%
if '%task1%'=='1' goto main
goto end

:end
echo [93m[!] �ݰ�������3����°ࣩ[1m
TIMEOUT>nul 2>nul /T 3
@exit
