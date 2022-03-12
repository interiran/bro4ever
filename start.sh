while true
do
ss-local -c local.json & proxychains4 ffmpeg -i "http://tv.rapidswiss.hitv.one:80/live/JYlFsFHLo9099/HwQnhaVkJS099/1991.m3u8" -c:v libx264 -preset: veryfast -tune zerolatency -b:v 4800k -minrate 4000k -maxrate 4800k -bufsize 4800k -r 30 -g 60 -force_key_frames "expr:gte(t,n_forced*2)" -c:a copy -f flv "rtmps://dc4-1.rtmp.t.me/s/1698007507:VDEaxuyAQthoyj5W8KzVIw"
done
