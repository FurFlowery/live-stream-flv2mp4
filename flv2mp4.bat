@echo off
@title ffmpeg flv批量转封装mp4脚本 By 花黎Official

:: 脚本编写 By 花黎Official
:: 脚本部分资料来源网络
:: 脚本版本V1.2

:: 基础变量
:: 固定脚本运行目录变量
set rundir=%~dp0

:: 开始前提醒
echo 欢迎使用flv批量转封装mp4脚本 By 花黎Official
echo 本脚本直接将flv转封装为mp4，执行速度取决于硬盘速度而非CPU
echo=
echo 使用方法：直接将现需要转封装的文件拖入本bat脚本即可
echo=
echo 在下一步前请确认输入文件是否正确，以及bat目录下是否有ffmpeg.exe
echo 否则可能导致执行失败
echo=
echo 当前脚本版本：V1.2
echo=
echo 本次输入文件:

:: 确定输入文件
set str=%*
set "str=%str:"="%"
set "str= %str%"
call set "str=%%str: %~d1=" "%~d1%%"

:: 列出输入文件列表
for %%i in ("%str%") do echo %%i
echo=

:: 执行前确认
echo 确认无误后按任意键开始转封装，否则请直接关闭本窗口
echo=
pause

:: 判断输入文件是否为空，否则结束脚本
if "%1"=="" goto:error

:: 判断ffmpeg.exe是否存在，否则结束脚本
if exist %rundir%\ffmpeg.exe (
     goto:start
)  else (
     echo 错误：ffmpeg.exe不存在，请下载ffmpeg.exe放置在脚本同目录下，确保文件名为"ffmpeg.exe"
	 goto:end
)

:: 循环执行转封装命令
:start

:: 转封装
%rundir%\ffmpeg.exe -i %~1 -vcodec copy -acodec copy %~1.mp4
shift
if not "%1"=="" goto:start

:: 完成提醒
echo=
echo 所有文件转封装完成
echo 文件已保存在输入文件同目录下
echo=
echo 如有失败请检查源文件是否正常以及目录下ffmpeg.exe是否可执行
goto:end

:: 错误：无输入文件
:error
echo=
echo 错误：没有输入文件
echo 请将需要转封装的flv文件直接拖到bat脚本上执行，切勿直接执行脚本

:: 执行完成
:end
echo=
pause