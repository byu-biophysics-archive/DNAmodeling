# LAMMPS and MOLTEMPLATE

We will be using a software developed by Andrew Jewett at CalTech called moltemplate which modifies and runs molecular dynamics simulations through the Lammps simulation software. Follow the instructions below to install the needed software onto your own personal computer to be able to run the simulations. You can check out Andrew's own repository for Moltemplate [here](https://github.com/jewettaij/moltemplate)

## *Note:*
If you are using MacOS you will need to download Homebrew in order to be able to run the terminal commands to install the other software. You can install Homebrew through the terminal [here](https://brew.sh).

##  1) Bash

Moltemplate requires BASH.  In MacOS, BASH comes with Xcode (and "brew").  Linux comes with BASH (and many other useful things), so in windows, a great way to get BASH is to install a version of linux on top of windows.  If using windows (10 or 11), you can do this by installing the "Ubuntu" app (also called WSL2.0).  This will install a fully functional copy of "ubuntu linux" running in a window.  (I have never tried this, but I've heard it works well.) (Alternatively you can install a virtual machine like VirtualBox, VMware, or HyperV and run some flavor of linux there.)

## 2) Python and Pip

 Install python and pip (version 3.0 or higher).  (A minor personal preference: I typically use the [anaconda distribution](https://www.anaconda.com/products/distribution) of python instead of relying on the version of python which comes bundled with the OS.  ...But either should work.) Pip is simply a package management system for python and to install it you can simply google "pip install" and your certain operating system and you should find fairly simple command line arguments to download pip once you've downloaded python.

## 3) Git

Install git  (In ubuntu linux, you would use "sudo apt-get install git"). Otherwise you can again search git install on your specific operating system and find instructions.

## 4) LAMMPS

In ubuntu, the easy way is to use "sudo apt-get install lammps".  (Note: You might need to run "sudo apt update" first.) Alternatively, you can download the source code, and then compile LAMMPS.  This is discussed below.

Otherwise you can again simply search for an installation guide for you specific operating system. Here is a helpful video for installation on [MacOS](https://www.youtube.com/watch?v=tHLXFhE8Cjs).

**OPTIONAL:** Compile LAMMPS from source code.
Usually the precompiled LAMMPS binary works well, so there isn't usually a need to compile LAMMPS, especially if you are a beginner.  But here are a couple situations where compiling LAMMPS might be useful:

Scenario 1) Sometimes the default version of LAMMPS may lack custom features you want to add or enable.  (For example, some of the DNA examples use a feature called "fix twist" which is not included with LAMMPS.)

Scenario 2)  Sometimes LAMMPS will crash and fail to print out a meaningful error message.  (When that happens, you can often figure out what went wrong by re-running LAMMPS in a debugger.)

  In both scenarios, you will need to compile LAMMPS from source code.  To do that:

a) Download the latest LAMMPS source code:

git clone https://github.com/lammps/lammps ~/lammps

b) If there are any extra .cpp or .h files containing custom features you want to add to LAMMPS (such as "[fix_twist.cpp](https://raw.githubusercontent.com/jewettaij/lammps/fix_twist/src/USER-MISC/fix_twist.cpp)" or "[fix_twist.h](https://raw.githubusercontent.com/jewettaij/lammps/fix_twist/src/USER-MISC/fix_twist.h)"), then copy those into the ~/lammps/src subdirectory.

c) Install the compilers and other build tools you will need, including g++, make, cmake, fftw3, and mpi.

**In ubuntu use these commands to do that:**
sudo apt-get install git cmake build-essential
sudo apt-get install mpi-default-bin mpi-default-dev
**Optional but recommended:**
sudo apt-get install libfftw3-dev libjpeg-dev libpng12-dev

d) Follow [these instructions](https://docs.lammps.org/Build.html).

## 5) Moltemplate

Run the following terminal commands on the command line to install moltemplate

git clone https://github.com/jewettaij/moltemplate ~/moltemplate

cd ~/moltemplate

pip3 install .
(or "pip", if that fails)

If that fails (with both "pip" and "pip3"), then try this instead:
pip3 install . --user
If that fails, then follow the instructions [here](https://github.com/jewettaij/moltemplate/blob/master/INSTALL.md).
(Optional but recommended: Install moltemplate in a [virtual environment](https://github.com/jewettaij/moltemplate/blob/master/INSTALL.md#optional-use-a-python-virtual-environment).)

## 6) VMD

Install [VMD](https://www.ks.uiuc.edu/Development/Download/download.cgi?PackageName=VMD).  It is needed for visualization.  (You can also try OVITO.)

Note: if you are installing on mac, you may run into an error where the software refuses to open due to being from an unknown developer. A way around this is to move the program into your applications folder, control click, click open, then click that you want to trust the application. This should allow the application to open. 
