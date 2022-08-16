
# DNA Modeling Project
In this project we are attempting to create a molecularly accurate simulation of the process of DNA replication and separation during the process of cell division in prokaryotic bacteria cells. We are using a software devloped at Caltech known as moltemplate to run the simulations. Understanding the foundational principles that govern the replication process is at the forefront of cutting edge Biophysics research and we are seeking to make BYU one of the foremost universities in the subject. Applications of these simulations are theoretically limitless, being able to adapt medicines and treatments to target the replication of DNA in harmful bacteria in our bodies could be a solution to bacterial infections as antibiotic resistance is on the rise. Many more applications are likely to be found as we begin to develop the world's understanding of the field.

## Supercomputer
If you need help getting set up on the supercomputer, you can apply for an account [here](https://rc.byu.edu) and see instructions on how to set up remote access through VS Code [here](/supercomputer/VScode_setup.md). Check out [this great seminar](https://www.youtube.com/watch?v=GlV9anm5OMg) put on by BYUSupercomputing for a fairly comprehensive beginner's introduction to the supercomputer and how it all works.  

## Academic Papers
These academic articles are very relevant base information to understand as we proceed with our tasks. 

* This paper expounds upon the newly discovered complexitiy within [prokaryotic DNA formations](https://onlinelibrary.wiley.com/doi/10.1002/jcb.20519)
* This paper describes recent developments in the understanding of internal nucleoid structure as well as the [dynamics of sister chromosome segregation](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4359759/)
* This paper goes more in depth on the [spatial order](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5870143/) required to maintain functionality of DNA repication
* These papers explain how bacterial structure can vary based on [growth/replication conditions](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3524407/) in the [growth phase](https://link.springer.com/article/10.1007/s11427-015-4898-0)
* This paper talks about the ever increasing use of [math in Biology](/resources/AbuseMathBiology.pdf) as well as the abuses and things to be wary of when using mathematical models to simulate biological functions. Very important to remember when doing simulations such as the ones we are doing. 

## DNA Replication
First things first, it is crucial that we have a basic understanding of what current science knows about the replication and division process. Check out the following resources for some basic information. 

* This section from a Biology Textbook on [Prokaryotic DNA Replication](https://openstax.org/books/biology/pages/14-4-dna-replication-in-prokaryotes)
* These two videos show incredible and fascinating simulations that have already been created for DNA replication and other processes in the cell. [Drew Barry Ted Talk](https://www.youtube.com/watch?v=WFCvkkDSfIU) and [Animations Video](https://www.youtube.com/watch?v=7Hk9jct2ozY).

## Supercoiling and Topoisomerase
DNA utilizes supercoiling to pack the immense length of its strands into a microscopic space, and the Topoisomerase lessens the strain as the DNA replicates.

* This video explains the idea of [DNA supercoiling](https://www.youtube.com/watch?v=5hwaDamU-jo)
* This video has a great explanation of the [Topoisomerase Enzyme](https://www.youtube.com/watch?v=k4fbPUGKurI) which is very important in our simulation of DNA Separation

## DNA Structure
The nucleoid structure employed by bacteria is suprisingly complex, and uses multiple layers as well as differening topological regions to organize the chromosome. 

* This video is simple yet descriptive in showing the way the [nucleoid](https://www.youtube.com/watch?v=30B0wGAID4o) is compacted
* This Wikipedia article explains the [structure of the nucleoid](https://en.wikipedia.org/wiki/Nucleoid) and chromosomes in a prokaryotic cell and will be helpful in understanding the organization of DNA prior to replication. 
* Another good video on [Prokaryotic Nucleoids](https://www.youtube.com/watch?v=0hlMHSoQQNA) explains the way that DNA is organized.


## Compiling LAMMPS with extra packages for DNA modeling
```shell
wget https://raw.githubusercontent.com/jewettaij/lammps/fix_twist/src/USER-MISC/fix_twist.cpp
wget https://raw.githubusercontent.com/jewettaij/lammps/fix_twist/src/USER-MISC/fix_twist.h
make yes-manybody
make yes-extra-pair
make yes-extra-molecule
make yes-molecule
module load intel-compilers/2019 intel-mpi/2019 libfabric/1.8
make -j mpi
```