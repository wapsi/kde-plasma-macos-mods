mkdir -p out
for m in JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC; do
	md=$(date -d"1 $m" +%m)
	for d in {1..31}; do
		echo "Converting ${md}_${d}.png"
		#convert Apps-Calendar-empty.png -gravity north -pointsize 220 -fill white -gravity north -annotate 349.5x349.5-72+85 "$m" tmp.png
		convert Apps-Calendar-empty2.png -transparent white -gravity north -font "Verdana-Bold" -pointsize 200 -fill white -gravity north -annotate 349.5x349.5-72+80 "$m" tmp.png
		#convert tmp.png -gravity north -pointsize 600 -fill black -gravity north -annotate 349.5x349.5-24+260 "${d}" out/"${md}_${d}.png"
		convert tmp.png -gravity north -font "Verdana-Bold" -pointsize 500 -fill black -gravity north -annotate 349.5x349.5-24+240 "${d}" out/"${md}_${d}.png"
	done
done

rm -f tmp.png
