@echo off

echo [93m[!] ��������������ʷlog ������[1m
set /p choice="[94m[i] ���� 'y' ȷ�� | ������˳���[0m"
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto history
goto end

:history
@echo --------------------------------->>��Ʒ����.txt
@findstr "����ʶ����" log\ArknightsAutoHelper.log>>��Ʒ����.txt
@del log\*.log*
echo [94m[i] �ѽ�������Ϣ����� ��Ʒ����.txt �ļ�[0m

:end
echo [93m[!] �ݰ�����[1m
TIMEOUT>nul 2>nul /T 3
@exit