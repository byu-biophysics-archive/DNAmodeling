topo readlammpsdata system.data full
animate write psf system.psf

mol addfile system.psf 0
mol addfile traj_npt.lammpstrj waitfor all 0

mol delrep 0 top
mol selection all
mol rep CPK
mol material EdgyShiny
mol addrep top
mol smoothrep 0 0 8

mol addrep 0
mol modselect 1 0 numbonds < 1
mol modstyle 1 0 VDW 0.500000 12.000000
mol smoothrep 0 1 8

color Name 1 cyan
color Name 2 mauve
color Name 3 yellow
color Name 4 green

translate by -0.075 0 0
translate by 0 -0.05 0

axes location off

proc make_trajectory_movie {freq} {
	# get the number of frames in the movie
	set num [molinfo top get numframes]
	# loop through the frames
	for {set i 0} {$i < $num} {incr i $freq} {
		# go to the given frame
		animate goto $i
                # for the display to update
                display update
		# take the picture
		set filename snap.[format "%04d" [expr $i/$freq]].rgb
		render snapshot $filename
	}
}

pbc wrap -compound res -all
pbc box

make_trajectory_movie 1

ffmpeg -r 60 -f image2 -s 1920x1080 -i snap.%04d.rgb -vcodec libx264 -crf 25 -pix_fmt yuv420p water.mp4