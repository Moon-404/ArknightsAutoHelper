@echo off

rem �л��� ArknightsAutoHelper ����λ��
:path
cd>nul 2>nul /D %~dp0

rem ������
:aah_slim
set /p slim="[94m[i] ����Ԥ��ս������[0m"
python ArknightsShell.py -s -t slim:%slim%

rem ȷ���Ƿ���������
set /p choice="[94m[i] ���� 'y' �������� | ������˳���[0m"
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto aah_slim
goto end

rem ��������
:end
echo [93m[!] �ݰ�����[1m
TIMEOUT>nul 2>nul /T 3
@exit