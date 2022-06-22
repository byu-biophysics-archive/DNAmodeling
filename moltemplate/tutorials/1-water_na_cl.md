# 1st Tutorial - Water + Sodium + Chloride

For this first simulation, we will simply be running files that have already been created and exist in the moltemplate github that you downloaded following the instructions in the README. This simulates 1000 water molecules in a box with periodic boundaries, with a number of sodium and chloride ions. Animations made of the software shows the interactions and even shows water boxes of sorts forming around the ions. Check out the original github folder [here](https://github.com/jewettaij/moltemplate/tree/master/examples/all_atom/force_field_explicit_parameters/waterSPCE%2BNa%2BCl). You will see three files, README_setup, README_run, and README_visualize. They contain instructions and or commands to respectively setup, run, and visualize the simulation.

## Step 1 -- setup
To begin, get to the waterSPCE+Na+Cl directory in your terminal. The first file, README_setup, is a shell script that uses moltemplate and the files in moltemplate_files to create the files that lammps will take as input scripts. You can run this file by running . ./README_setup.sh in the terminal. This should create a number of system.in files. 

## Step 2 -- run
The second file, README_run.sh, is also a shell script. In a similar way you can use the . ./README_run.sh command to run this in the terminal. This will run lammps and the simulation in your terminal. It should take approximately 20 minutes to run, depending on your computer. 

## Step 3 -- visualize
The third file, README_visualize, contains text instructions on how to enter the simulation into VMD, so follow that and you should be able to create an animation of the simulation. 
### VMD TIPS
* I would recommend going to the graphics dropdown, representations, and then from there finding the Draw Style tab. Change the drawing method to CPK, it is helpful for visualizing atoms. 
* Also under graphics representations you can find the Trajectory tab and from there change the Trajectory Smoothing Window Size, it will slow down the simulation and make it easier to watch. 
* Hitting s will enter a zoom in/out mode, hitting t will enter a move mode, and hitting r will enter a rotation mode. 
* Afterwards you can make an mpg movie from the built in software. Instructions on how to make the movies are [here](https://www.youtube.com/watch?v=lueqjpjo3yY).

Check out the completed directory for this example [here](../completed_examples/1-water_na_cl) :sunglasses:
