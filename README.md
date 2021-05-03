# live-stream-flv2mp4
批量直播录制flv文件转mp4  

## 注意
由于Github限制单文件100M，无法上传ffmpeg.exe，请自行前往ffmpeg官网下载，放置在bat同目录下

## 使用方法
直接将需要转封装的flv视频文件拖到bat上即可  
内置：ffmpeg版本：4.4  

## 更新记录
V1.2  
修改一些变量名、注释和提示（强迫症）  

V1.1  
修复当flv文件与bat不在同目录下时ffmpeg.exe是否存在判断失败导致无法转封装  

V1.0  
第一版本  
功能：  
批量flv转mp4  
判断ffmpeg是否存在  
判断输入文件是否为空  
