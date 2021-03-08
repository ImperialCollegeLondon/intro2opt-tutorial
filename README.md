# Content #
This repository contains the hands-on tutorials for the lecture "Optimization Models and Applications", part of the Data Science and Digitalisation in the Energy Sector module, MSc in Sustainable Energy Futures, Imperial College London. 
Lecturer and author: Stefano Moret (<s.moret@imperial.ac.uk>)

# How to run the model #
The model is coded in GLPK, using the open-source solver GLPSOL. To run the model, perform the following 4 steps:

1. Install GLPK/GLPSOL:

a) on Mac OS X (Option 1, recommended): use homebrew
http://arnab-deka.com/posts/2010/02/installing-glpk-on-a-mac/

b) on Mac Os X (Option 2)/Linux:
- Download the latest version of GLPK from: http://www.gnu.org/software/glpk/#downloading
- Install GLPK from the command line

$ cd ~/Downloads  
$ tar -xzf glpk-5.0.tar.gz  
$ cd  glpk-5.0 [or newer version]  
$ ./configure --prefix=/usr/local  
$ make  
$ sudo make install  

See if your system recognises it. Executing from the command line:

$ which glpsol

should reveal:

$ /usr/local/bin/glpsol

Now try:

$ glpsol --help

Source: http://hichenwang.blogspot.ch/2011/08/fw-installing-glpk-on-mac.html

c) on Windows:

- Download the source files from: https://sourceforge.net/projects/winglpk/files/latest/download
- Extract the files in a folder. Depending on your operating system use glpsol.exe from:
./w64 if running on a 64 bit version
./w32 if running on a 64 bit version
- For facilitating the access to glpsol.exe you can add the full path (depending on your operating system, see below) from the previous point to the system variables PATH
This guide could also be useful: http://www.osemosys.org/uploads/1/8/5/0/18504136/glpk_installation_guide_for_windows10_-_201702.pdf

2. Clone/download the content of this folder
3. Navigate to the folder 'example1_steel/v1' folder via terminal/cmd prompt and execute (check glpsol documentation for more options):

$ glpsol -m steel.mod -o steel.out
(You might need to use 'glspol.exe' instead of 'glpsol' on Windows)

4. Check the output files: 
if the steel.out file is correctly generated.

If the command at point (3) did not run, it might be that glpsol is not on your PATH. Two solutions for that:
- (not best) instead of "glpsol" use the full path, e.g. on Mac '/usr/local/bin/glpsol  -m steel.mod'
- (best) add the folder in which glpsol is installed to the PATH. e.g. on Windows 7 (e.g., https://sourcedaddy.com/windows-7/changing-the-path.html). on mac (from terminal) 'export PATH=/usr/local/bin:$PATH' (if glpsol is installed in /usr/local/bin)
