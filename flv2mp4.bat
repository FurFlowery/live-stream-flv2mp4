@echo off
@title ffmpeg flv����ת��װmp4�ű� By ����Official

:: �ű���д By ����Official
:: �ű�����������Դ����
:: �ű��汾V1.2

:: ��������
:: �̶��ű�����Ŀ¼����
set rundir=%~dp0

:: ��ʼǰ����
echo ��ӭʹ��flv����ת��װmp4�ű� By ����Official
echo ���ű�ֱ�ӽ�flvת��װΪmp4��ִ���ٶ�ȡ����Ӳ���ٶȶ���CPU
echo=
echo ʹ�÷�����ֱ�ӽ�����Ҫת��װ���ļ����뱾bat�ű�����
echo=
echo ����һ��ǰ��ȷ�������ļ��Ƿ���ȷ���Լ�batĿ¼���Ƿ���ffmpeg.exe
echo ������ܵ���ִ��ʧ��
echo=
echo ��ǰ�ű��汾��V1.2
echo=
echo ���������ļ�:

:: ȷ�������ļ�
set str=%*
set "str=%str:"="%"
set "str= %str%"
call set "str=%%str: %~d1=" "%~d1%%"

:: �г������ļ��б�
for %%i in ("%str%") do echo %%i
echo=

:: ִ��ǰȷ��
echo ȷ��������������ʼת��װ��������ֱ�ӹرձ�����
echo=
pause

:: �ж������ļ��Ƿ�Ϊ�գ���������ű�
if "%1"=="" goto:error

:: �ж�ffmpeg.exe�Ƿ���ڣ���������ű�
if exist %rundir%\ffmpeg.exe (
     goto:start
)  else (
     echo ����ffmpeg.exe�����ڣ�������ffmpeg.exe�����ڽű�ͬĿ¼�£�ȷ���ļ���Ϊ"ffmpeg.exe"
	 goto:end
)

:: ѭ��ִ��ת��װ����
:start

:: ת��װ
%rundir%\ffmpeg.exe -i %~1 -vcodec copy -acodec copy %~1.mp4
shift
if not "%1"=="" goto:start

:: �������
echo=
echo �����ļ�ת��װ���
echo �ļ��ѱ����������ļ�ͬĿ¼��
echo=
echo ����ʧ������Դ�ļ��Ƿ������Լ�Ŀ¼��ffmpeg.exe�Ƿ��ִ��
goto:end

:: �����������ļ�
:error
echo=
echo ����û�������ļ�
echo �뽫��Ҫת��װ��flv�ļ�ֱ���ϵ�bat�ű���ִ�У�����ֱ��ִ�нű�

:: ִ�����
:end
echo=
pause