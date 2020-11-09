#for i in $1.$2; do LC_ALL=C ffmpeg -i "$i" 2>&1 | awk -F: '/Duration:/{print $2*3600+$3*60+$4}'; done | paste -sd+ | bc 
v=$(for i in $1.$2; do LC_ALL=C ffmpeg -i "$i" 2>&1 | awk -F: '/Duration:/{print $2*3600+$3*60+$4}'; done | paste -sd+ | bc)
T=$(("${v%.*}"))
D=$((T/60/60/24))
H=$((T/60/60%24))
M=$((T/60%60))
S=$((T%60))
(( $D > 0 )) && printf '%d:' $D
(( $H > 0 )) && printf '%d:' $H
(( $M > 0 )) && printf '%d:' $M
(( $D > 0 || $H > 0 || $M > 0 ))
printf '%d\n' $S
