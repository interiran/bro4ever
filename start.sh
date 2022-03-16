ss-local -c local.json & proxychains4 -f proxychains.conf ffmpeg -i "https://ky-iptv.com/live/hey454545/12345645/1248327.m3u8" -c:v libx264 -preset: veryfast -tune zerolatency -b:v 4800k -minrate 4000k -maxrate 4800k -bufsize 4800k -r 30 -g 60 -force_key_frames "expr:gte(t,n_forced*2)" -c:a copy -f flv "rtmps://dc4-1.rtmp.t.me/s/1698007507:VDEaxuyAQthoyj5W8KzVIw"

