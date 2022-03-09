# Content #
This repository contains the hands-on tutorials for the lecture "Optimization Models and Applications", part of the Data Science and Digitalisation in the Energy Sector module, MSc in Sustainable Energy Futures, Imperial College London. 

Lecturer and author: Stefano Moret (<s.moret@imperial.ac.uk>)

# What you will need #
1. A text editor: the different file formats used in this tutorial (terminating with extensions .mod, .dat, .out, .run) can be opened and edited with standard text editors. Although most text editors will do the job, the recommended text editors are:

- on Mac OS: BBEdit (https://www.barebones.com/products/bbedit/)
- on Windows: NotePad++ (https://notepad-plus-plus.org)

2. GLPK: The examples are coded in GLPK, which uses the open-source solver GLPSOL. Instructions in the next sections will guide you through the installation of GLPK.

3. Command line: this is already installed on your system. On Windows, you can call the command prompt by opening the Start menu and searching for "cmd". On Mac OS, you will need to open the Terminal app.

# How to install GLPK #
The installation of GLPK will also automatically install the open-source solver GLPSOL. 
To install GLPK and test the installation, follow these steps:

1. Install GLPK/GLPSOL:

a) on Mac OS X (Option 1, recommended): 
- install homebrew following this guidance: https://brew.sh
- From the command line execute:

$ brew install glpk

b) on Mac Os X (Option 2)/Linux:
- Download the latest version of GLPK from: http://www.gnu.org/software/glpk/#downloading
- Install GLPK from the command line

$ cd ~/Downloads  
$ tar -xzf glpk-5.0.tar.gz  
$ cd  glpk-5.0 [or newer version]  
$ ./configure --prefix=/usr/local  
$ make  
$ sudo make install  

After installing GLPK using either (a) or (b), see if your system recognises it. Executing from the command line:

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

2. Clone/download the content of this tutorial folder
3. Navigate to the folder 'example1_steel/v1' folder via terminal/cmd prompt and execute (check glpsol documentation for more options):

$ glpsol -m steel.mod -o steel.out
(You might need to use 'glspol.exe' instead of 'glpsol' on Windows)

4. Check the output files: the steel.out file is correctly generated. The optimal solution is xB = 6000, xC = 1400

If the command at point (3) did not run, it might be that glpsol is not on your PATH. Two solutions for that:
- (not best) instead of "glpsol" use the full path, e.g. on Mac '/usr/local/bin/glpsol  -m steel.mod'
- (best) add the folder in which glpsol is installed to the PATH. e.g. on Windows 7 (e.g., https://sourcedaddy.com/windows-7/changing-the-path.html). on mac (from terminal) 'export PATH=/usr/local/bin:$PATH' (if glpsol is installed in /usr/local/bin)