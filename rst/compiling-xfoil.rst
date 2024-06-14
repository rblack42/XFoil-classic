Compiling Steps
###############

1. Download and unpack current XFoil (6.99)
*******************************************

..	code::	shell

	$ make fetch

This creates a **master** directory with the code in the **Xfoil**
subdirectory.

2. Prepare source directories for local compile
***********************************************

We will not touch the master copy of the code. Instead, files will be copied
into local subdirectories for the compile. The **README** in the master code
shows the required steps.

2.1 Create **orrs** directory
=============================

..	code::	shell

	$ make orrs-prep

This step creates the **orrs/src** code directory and modifies the osmap.f file
to reflect the desired install directory.


