for similarity in {1..9}
do
    for blend in {1..9}
    do
    
    ffmpeg -i road.jpg -i girl.mp4 -filter_complex "[1:v]colorkey=0x3BBD1E:0.$similarity:0.$blend[ckout];[0:v][ckout]overlay[out]" -map "[out]" -t 10 ./girlOut/girl$similarity$blend.mp4

    
    done
done
