$raw = $args[0]
$folder = $args[1]
$model = $args[2]


Write-Host "----------start----------" -ForegroundColor red
Write-Host "----------Encoding source file into H.264 with 3000 kbps bitrate----------" -ForegroundColor red
$h264_3000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i "$raw" -c:v libx264 -preset veryfast -profile:v main -level 4.0 -x264-params ""nal-hrd=cbr:force-cfr=1"" -b:v 3000k -minrate 3000k -maxrate 3000k -bufsize 6000k  "${folder}h264-3000.mp4"}
Write-Host "----------Encoding source file into H.264 with 3500 kbps bitrate----------" -ForegroundColor red
$h264_3500 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx264 -preset veryfast -profile:v main -level 4.0 -x264-params ""nal-hrd=cbr:force-cfr=1"" -b:v 3500k -minrate 3500k -maxrate 3500k -bufsize 7000k  "${folder}h264-3500.mp4"}
Write-Host "----------Encoding source file into H.264 with 4000 kbps bitrate----------" -ForegroundColor red
$h264_4000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx264 -preset veryfast -profile:v main -level 4.0 -x264-params ""nal-hrd=cbr:force-cfr=1"" -b:v 4000k -minrate 4000k -maxrate 4000k -bufsize 8000k  "${folder}h264-4000.mp4"}
Write-Host "----------Encoding source file into H.264 with 4500 kbps bitrate----------" -ForegroundColor red
$h264_4500 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx264 -preset veryfast -profile:v main -level 4.0 -x264-params ""nal-hrd=cbr:force-cfr=1"" -b:v 4500k -minrate 4500k -maxrate 4500k -bufsize 9000k  "${folder}h264-4500.mp4"}
Write-Host "----------Encoding source file into H.264 with 5000 kbps bitrate----------" -ForegroundColor red
$h264_5000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx264 -preset veryfast -profile:v main -level 4.0 -x264-params ""nal-hrd=cbr:force-cfr=1"" -b:v 5000k -minrate 5000k -maxrate 5000k -bufsize 10000k  "${folder}h264-5000.mp4"}
Write-Host "----------Encoding source file into H.264 with 5500 kbps bitrate----------" -ForegroundColor red
$h264_5500 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx264 -preset veryfast -profile:v main -level 4.0 -x264-params ""nal-hrd=cbr:force-cfr=1"" -b:v 5500k -minrate 5500k -maxrate 5500k -bufsize 11000k  "${folder}h264-5500.mp4"}
Write-Host "----------Encoding source file into H.264 with 6000 kbps bitrate----------" -ForegroundColor red
$h264_6000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx264 -preset veryfast -profile:v main -level 4.0 -x264-params ""nal-hrd=cbr:force-cfr=1"" -b:v 6000k -minrate 6000k -maxrate 6000k -bufsize 12000k  "${folder}h264-6000.mp4"}

Write-Host "----------Encoding to H.264 done----------" -ForegroundColor green

Write-Host "----------Encoding to H.265----------" -ForegroundColor red

Write-Host "----------Encoding source file into H.265 with 3000 kbps bitrate----------" -ForegroundColor red
$h265_3000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx265 -preset veryfast -profile:v main -level 4.0 -x265-params -strict-cbr -b:v 3000k -minrate 3000k -maxrate 3000k -bufsize 6000k  "${folder}h265-3000.mp4"}
Write-Host "----------Encoding source file into H.265 with 3500 kbps bitrate----------" -ForegroundColor red
$h265_3500 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx265 -preset veryfast -profile:v main -level 4.0 -x265-params -strict-cbr -b:v 3500k -minrate 3500k -maxrate 3500k -bufsize 7000k  "${folder}h265-3500.mp4"}
Write-Host "----------Encoding source file into H.265 with 4000 kbps bitrate----------" -ForegroundColor red
$h265_4000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx265 -preset veryfast -profile:v main -level 4.0 -x265-params -strict-cbr -b:v 4000k -minrate 4000k -maxrate 4000k -bufsize 8000k  "${folder}h265-4000.mp4"}
Write-Host "----------Encoding source file into H.265 with 4500 kbps bitrate----------" -ForegroundColor red
$h265_4500 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx265 -preset veryfast -profile:v main -level 4.0 -x265-params -strict-cbr -b:v 4500k -minrate 4500k -maxrate 4500k -bufsize 9000k  "${folder}h265-4500.mp4"}
Write-Host "----------Encoding source file into H.265 with 5000 kbps bitrate----------" -ForegroundColor red
$h265_5000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx265 -preset veryfast -profile:v main -level 4.0 -x265-params -strict-cbr -b:v 5000k -minrate 5000k -maxrate 5000k -bufsize 10000k  "${folder}h265-5000.mp4"}
Write-Host "----------Encoding source file into H.265 with 5500 kbps bitrate----------" -ForegroundColor red
$h265_5500 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx265 -preset veryfast -profile:v main -level 4.0 -x265-params -strict-cbr -b:v 5500k -minrate 5500k -maxrate 5500k -bufsize 11000k  "${folder}h265-5500.mp4"}
Write-Host "----------Encoding source file into H.265 with 6000 kbps bitrate----------" -ForegroundColor red
$h265_6000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libx265 -preset veryfast -profile:v main -level 4.0 -x265-params -strict-cbr -b:v 6000k -minrate 6000k -maxrate 6000k -bufsize 12000k  "${folder}h265-6000.mp4"} 

Write-Host "----------Encoding to H.265 done----------" -ForegroundColor green

Write-Host "----------Encoding to VP9----------" -ForegroundColor red

Write-Host "----------Encoding source file into VP9 with 3000 kbps bitrate----------" -ForegroundColor red
$vp9_3000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libvpx-vp9 -deadline realtime -b:v 3000k -minrate 3000k -maxrate 3000k -bufsize 6000k  "${folder}vp9-3000.mp4"}
Write-Host "----------Encoding source file into VP9 with 3500 kbps bitrate----------" -ForegroundColor red
$vp9_3500 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libvpx-vp9 -deadline realtime -b:v 3500k -minrate 3500k -maxrate 3500k -bufsize 7000k  "${folder}vp9-3500.mp4"}
Write-Host "----------Encoding source file into VP9 with 4000 kbps bitrate----------" -ForegroundColor red
$vp9_4000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libvpx-vp9 -deadline realtime -b:v 4000k -minrate 4000k -maxrate 4000k -bufsize 8000k  "${folder}vp9-4000.mp4"}
Write-Host "----------Encoding source file into VP9 with 4500 kbps bitrate----------" -ForegroundColor red
$vp9_4500 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libvpx-vp9 -deadline realtime -b:v 4500k -minrate 4500k -maxrate 4500k -bufsize 9000k  "${folder}vp9-4500.mp4"}
Write-Host "----------Encoding source file into VP9 with 5000 kbps bitrate----------" -ForegroundColor red
$vp9_5000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libvpx-vp9 -deadline realtime -b:v 5000k -minrate 5000k -maxrate 5000k -bufsize 10000k  "${folder}vp9-5000.mp4"}
Write-Host "----------Encoding source file into VP9 with 5500 kbps bitrate----------" -ForegroundColor red
$vp9_5500 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libvpx-vp9 -deadline realtime -b:v 5500k -minrate 5500k -maxrate 5500k -bufsize 11000k  "${folder}vp9-5500.mp4"}
Write-Host "----------Encoding source file into VP9 with 6000 kbps bitrate----------" -ForegroundColor red
$vp9_6000 = Measure-Command { ffmpeg.exe -f rawvideo -vcodec rawvideo -s:v 1280x720 -r 30 -pix_fmt yuv420p -i $raw -c:v libvpx-vp9 -deadline realtime -b:v 6000k -minrate 6000k -maxrate 6000k -bufsize 12000k  "${folder}vp9-6000.mp4"} 

Write-Host "----------Encoding to VP9 done----------" -ForegroundColor green

Write-Host "----------Decoding all encoded files to raw format----------" -ForegroundColor red

ffmpeg.exe -y -i "${folder}h264-3000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h264-3000.yuv"
ffmpeg.exe -y -i "${folder}h264-3500.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h264-3500.yuv"
ffmpeg.exe -y -i "${folder}h264-4000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h264-4000.yuv"
ffmpeg.exe -y -i "${folder}h264-4500.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h264-4500.yuv"
ffmpeg.exe -y -i "${folder}h264-5000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h264-5000.yuv"
ffmpeg.exe -y -i "${folder}h264-5500.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h264-5500.yuv"
ffmpeg.exe -y -i "${folder}h264-6000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h264-6000.yuv"

ffmpeg.exe -y -i "${folder}h265-3000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h265-3000.yuv"
ffmpeg.exe -y -i "${folder}h265-3500.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h265-3500.yuv"
ffmpeg.exe -y -i "${folder}h265-4000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h265-4000.yuv"
ffmpeg.exe -y -i "${folder}h265-4500.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h265-4500.yuv"
ffmpeg.exe -y -i "${folder}h265-5000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h265-5000.yuv"
ffmpeg.exe -y -i "${folder}h265-5500.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h265-5500.yuv"
ffmpeg.exe -y -i "${folder}h265-6000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}h265-6000.yuv"

ffmpeg.exe -y -i "${folder}vp9-3000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}vp9-3000.yuv"
ffmpeg.exe -y -i "${folder}vp9-3500.mp4" -pix_fmt yuv420p -vsync 0 "${folder}vp9-3500.yuv"
ffmpeg.exe -y -i "${folder}vp9-4000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}vp9-4000.yuv"
ffmpeg.exe -y -i "${folder}vp9-4500.mp4" -pix_fmt yuv420p -vsync 0 "${folder}vp9-4500.yuv"
ffmpeg.exe -y -i "${folder}vp9-5000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}vp9-5000.yuv"
ffmpeg.exe -y -i "${folder}vp9-5500.mp4" -pix_fmt yuv420p -vsync 0 "${folder}vp9-5500.yuv"
ffmpeg.exe -y -i "${folder}vp9-6000.mp4" -pix_fmt yuv420p -vsync 0 "${folder}vp9-6000.yuv"
Write-Host "----------Decoding done----------" -ForegroundColor green


Write-Host "----------Calculating VMAF scores----------" -ForegroundColor red
$vmaf_h264_3000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h264-3000.yuv" $model
$vmaf_h264_3500 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h264-3500.yuv" $model
$vmaf_h264_4000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h264-4000.yuv" $model
$vmaf_h264_4500 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h264-4500.yuv" $model
$vmaf_h264_5000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h264-5000.yuv" $model
$vmaf_h264_5500 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h264-5500.yuv" $model
$vmaf_h264_6000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h264-6000.yuv" $model

$vmaf_h265_3000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h265-3000.yuv" $model
$vmaf_h265_3500 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h265-3500.yuv" $model
$vmaf_h265_4000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h265-4000.yuv" $model
$vmaf_h265_4500 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h265-4500.yuv" $model
$vmaf_h265_5000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h265-5000.yuv" $model
$vmaf_h265_5500 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h265-5500.yuv" $model
$vmaf_h265_6000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}h265-6000.yuv" $model

$vmaf_vp9_3000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}vp9-3000.yuv" $model
$vmaf_vp9_3500 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}vp9-3500.yuv" $model
$vmaf_vp9_4000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}vp9-4000.yuv" $model
$vmaf_vp9_4500 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}vp9-4500.yuv" $model
$vmaf_vp9_5000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}vp9-5000.yuv" $model
$vmaf_vp9_5500 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}vp9-5500.yuv" $model
$vmaf_vp9_6000 = vmafossexec.exe yuv420p 1280 720 $raw "${folder}vp9-6000.yuv" $model
Write-Host "----------VMAF scores calculated----------" -ForegroundColor green

Write-Host "`n"
Write-Host "`n"

Write-Host "----------Results----------" -ForegroundColor green

Write-Host "`n"
Write-Host "`n"

Write-Host "----------H.264 - 3000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h264_3000}"
Write-Host "Quality:"
Write-Host "${vmaf_h264_3000}"

Write-Host "----------H.264 - 3500 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h264_3500}"
Write-Host "Quality:"
Write-Host "${vmaf_h264_3500}"

Write-Host "----------H.264 - 4000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h264_4000}"
Write-Host "Quality:"
Write-Host "${vmaf_h264_4000}"

Write-Host "----------H.264 - 4500 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h264_4500}"
Write-Host "Quality:"
Write-Host "${vmaf_h264_4500}"

Write-Host "----------H.264 - 5000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h264_5000}"
Write-Host "Quality:"
Write-Host "${vmaf_h264_5000}"

Write-Host "----------H.264 - 5500 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h264_5500}"
Write-Host "Quality:"
Write-Host "${vmaf_h264_5500}"

Write-Host "----------H.264 - 6000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h264_6000}"
Write-Host "Quality:"
Write-Host "${vmaf_h264_6000}"


Write-Host "----------H.265 - 3000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h265_3000}"
Write-Host "Quality:"
Write-Host "${vmaf_h265_3000}"

Write-Host "----------H.265 - 3500 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h265_3500}"
Write-Host "Quality:"
Write-Host "${vmaf_h265_3500}"

Write-Host "----------H.265 - 4000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h265_4000}"
Write-Host "Quality:"
Write-Host "${vmaf_h265_4000}"

Write-Host "----------H.265 - 4500 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h265_4500}"
Write-Host "Quality:"
Write-Host "${vmaf_h265_4500}"

Write-Host "----------H.265 - 5000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h265_5000}"
Write-Host "Quality:"
Write-Host "${vmaf_h265_5000}"

Write-Host "----------H.265 - 5500 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h265_5500}"
Write-Host "Quality:"
Write-Host "${vmaf_h265_5500}"

Write-Host "----------H.265 - 6000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${h265_6000}"
Write-Host "Quality:"
Write-Host "${vmaf_h265_6000}"


Write-Host "----------VP9 - 3000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${vp9_3000}"
Write-Host "Quality:"
Write-Host "${vmaf_vp9_3000}"

Write-Host "----------vp9 - 3500 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${vp9_3500}"
Write-Host "Quality:"
Write-Host "${vmaf_vp9_3500}"

Write-Host "----------vp9 - 4000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${vp9_4000}"
Write-Host "Quality:"
Write-Host "${vmaf_vp9_4000}"

Write-Host "----------vp9 - 4500 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${vp9_4500}"
Write-Host "Quality:"
Write-Host "${vmaf_vp9_4500}"

Write-Host "----------vp9 - 5000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${vp9_5000}"
Write-Host "Quality:"
Write-Host "${vmaf_vp9_5000}"

Write-Host "----------vp9 - 5500 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${vp9_5500}"
Write-Host "Quality:"
Write-Host "${vmaf_vp9_5500}"

Write-Host "----------vp9 - 6000 kbps----------" -ForegroundColor red
Write-Host "Time to encode:" -ForegroundColor green
Write-Host "${vp9_6000}"
Write-Host "Quality:"
Write-Host "${vmaf_vp9_6000}"


Write-Host "done"


Read-Host -Prompt "Press Enter to exit"