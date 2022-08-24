pbc wrap -compound res -all
pbc box

make_trajectory_movie 1

ffmpeg -r 60 -f image2 -s 1920x1080 -i snap.%04d.rgb -vcodec libx264 -crf 25 -pix_fmt yuv420p water.mp4