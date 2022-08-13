topo readlammpsdata system.data full
animate write psf system.psf

mol addfile system.psf 0
mol addfile traj_npt.lammpstrj 0 

pbc wrap -compound res -all
pbc box

mol selection all
mol rep CPK
mol material EdgyShiny
mol smoothrep 0 0 4
mol addrep 0