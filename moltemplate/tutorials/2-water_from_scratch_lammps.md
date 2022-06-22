# 2nd Tutorial - Lammps files from scratch

In this tutorial we seek to better understand what is actually happening under the hood of the lammps software, as well as why moltemplate is so helpful in creating the lammps scripts for us. We are going to, from scratch, write the lammps input scripts that are needed to run a simple simulation. This will be similar to the first tutorial we ran, but using just 2 water molecules instead of 1000 and no ions. 

## Step 1 -- system.in files
You will need to manually create the system.in files that moltemplate created in the first example. This includes system.in, system.in.init, system.in.settings, system.in.constraints, and system.data (You can alternatively just create a system.in and a system.data file with all the commands because the system.in file ends up just including the others anyway). Use the files from the first example as a guide as you create the files, being sure to seek to understand each of the commands and what they mean. The system.data file will be the most different as it contains the info about each of the atoms in the simulation, so enter in information for only two molecules and the respective bonds.

### Tips
* The columns in the Atoms catergory in system.data refer to, in order: atom id -- molecule id -- atom type -- charge -- position
* The bond section is: bond id -- bond type -- atom 1 id -- atom 2 id
* The angle section is: angle id -- angle type -- atom 1 id -- atom 2 id -- atom 3 id

## Step 2 -- run.in files
Next you will need to create the files that lammps will use to know which files to draw from and what to run. These are the run.in.npt and run.in.nvt files (npt for constant pressure and nvt for constant volume). You can in a similar fashion use the files from the first tutorial as a help when writing these files, but seek to understand what is going on in each of the commands.

## Step 3 -- run script
Lastly you will need to create a script similar to the shell script we used to run the first tutorial simulation. You can do this by running terminal commands on their own, or by creating a shell script containing everything you need to run the simulation and simply run that. This simulation should run a LOT faster than the first one. 

## Step 4 -- visualize
Follow the same steps as was outlined in the first tutorial in order to create a movie of the simulation in VMD. Congrats! You've run your first very own lammps simulation! I bet you have gained a greater appreciation for moltemplates ability to automatically create thousands of atoms and bonds! 

Check out the completed directory [here](../completed_examples/2-water_from_scratch_lammps)! :grin:
