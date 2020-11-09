for i in *.mp4; do LC_ALL=C ffmpeg -i "$i" 2>&1 | awk -F: '/Duration:/{print $2*3600+$3*60+$4}'; done | paste -sd+ | bc | xargs -I TIME date -d@TIME -u +%H:%M:%S
