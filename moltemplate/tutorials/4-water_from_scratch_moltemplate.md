# 4th Tutorial - Moltemplate files from scratch

In this tutorial we are going to better understand the way moltemplate works and how it creates the files that lammps will use to run the simulations. Like we did in the 2nd tutorial we are going to run a simplified simulation of the first tutorial, but this time we will start by creating our moltemplate files from scratch.

## Step 1 -- .lt files
You will need to manually create at least two .lt files, one that defines the molecular relationships used in the molecules used in the simulation (ie. "spce.lt" or "ions.lt"). Since we are just doing water molecules we don't actually need the ions.lt file, but you may choose to experiment with it anyway. You may also choose to keep each of these files in a separate directory such as moltemplate_files. The moltemplate files follow a similar format as the lammps files do, however they are helpful in that you can name files with letters/words rather than needing to use number for everything. The \$ and @ sign denote that a word/abbreviation will be turned into a number when transferred to a lammps file. The \$ sign typically refers the $ID$ of a specific atom, molecule, bond, etc. The @ sign on the other hand usually denotes the $type$ of a specific atom, molecule, bond, etc. The second file that you will need to create is a system.lt file. Here you can set the boundaries of your simulation. You'll also have the option here to choose how many atoms you want, and in what configuration. The example in the completed_examples folder for this tutorial used 8 molecules in a 2x2x2 lattice. Make sure to import the aforementioned .lt file so the program recognizes which molecules you are placing where. 

## Step 2 -- run.in file
You will need to create a run.in.npt or .nvt file like we did in the lammps from scratch example. You can use either of the files or both, just depending on what you call in your shell script to setup and run the example.

## Step 3 -- setup script
You need to then create a shell script or simply run the terminal commands needed to run moltemplate on the .lt files that you've created and then create the system.in files lammps needs to run. You can check out the README_setup.sh file from the first example for help on how these commands should be run. You should see that system.in files are created in the directory you've been working in.  

## Step 4 -- run script
Lastly you can create a run script or use command line arguments to run lammps with the files that we just created from lammps. After we've run lammps on the scripts we can move forward with visualization in VMD. 

Check out the completed example [here](../completed_examples/4-water_from_scratch_moltemplate/)! :smiley: