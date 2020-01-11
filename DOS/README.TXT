README.TXT

NOTES ON MS-DOS 6.2
===================

This file provides important information not included in the
MICROSOFT MS-DOS 6 USER'S GUIDE or in MS-DOS Help.

This file is divided into the following major sections:

1. Setup
2. MemMaker, EMM386, and Memory Management
3. Windows
4. Hardware Compatibility with MS-DOS 6.2
5. Microsoft Programs
6. Third-Party Programs
7. DoubleSpace

If the subject you need information about doesn't appear in
this file, you might find it in one of the following text
files included with MS-DOS:

* NETWORKS.TXT, which describes how to update your network software
  for use with MS-DOS 6.2.

For information about features new to MS-DOS 6.2, type HELP WHATSNEW
at the command prompt.

This file contains the following topics:

1. Notes on Setup
   1.1  You deleted files from the directory that Setup needs
	  to install the optional programs.
   1.2  You need to install MS-DOS manually.
   1.3  Additional Keyboard and Codepage Support
   1.4  Switching Between Modes on Dual-Mode Keyboards
2. MemMaker, EMM386, and Memory Management
   2.1  Intel Expanded-Memory Driver (EMM.SYS)
   2.2  Running MemMaker on a Computer with PC-NFS
   2.3  You have a Super VGA display and want to conserve memory.
   2.4  Using MemMaker with IBM LAN
   2.5  MemMaker and Adaptec SCSI devices
   2.6  Running MemMaker on a computer with PC Tools RAMBoost
   2.7  EMM386 detects an error in an application
   2.8  MemMaker no longer aggressively scans upper memory by default
   2.9  Additional MemMaker Troubleshooting Information
3. Windows
   3.1  Your computer uses a Windows 3.0 permanent swap file.
   3.2  Using compressed floppy disks with Windows File Manager
4. Hardware Compatibility with MS-DOS 6.2
   4.1  Hardcard
5. Microsoft Programs
   5.1  Microsoft Anti-Virus
   5.2  Running Microsoft Backup for MS-DOS under Windows
   5.3  Backup for Windows stops running at the end of the 
	  compatibility test
   5.4  Running Microsoft Backup with TI4000 and Gateway NOMAD computers
   5.5  Microsoft Defragmenter
6. Third-party Programs
   6.1  4DOS and NDOS
   6.2  Above Board 286 and Above Board Plus Installation
	  Programs
   6.3  CodeView
   6.4  Colorado Tape Backup
   6.5  Fastback Plus
   6.6  Norton Desktop for Windows 2.0
   6.7  Norton Utilities
   6.8  PC Tools
   6.9  QEMM's Stealth DoubleSpace Feature
   6.10 Johnson Computer Systems PC-Vault and PC-Vault Plus
   6.11 AddStor DoubleTools
7. DoubleSpace
   7.1  Converting Your XtraDrive Disk-Compression Software
	to DoubleSpace
   7.2  Converting Stacker 2.x or 3.0 Software to DoubleSpace
   7.3  Converting Stacker 3.1 Software to DoubleSpace
   7.4  Converting Other Disk-Compression Software to DoubleSpace
   7.5  DoubleSpace Setup indicates that your computer is running an
	  incompatible disk-caching program.
   7.6  Your compressed drive runs out of disk space.
   7.7  Your uncompressed (host) drive runs out of disk space.
   7.8  DoubleSpace did not compress all of your files because
	  the drive ran out of disk space.
   7.9  Windows displays the message "The permanent swap file is corrupt."
   7.10 EXTDISK.SYS displays a warning about drive letters.
   7.11 You need a special device driver to use your startup drive.
   7.12 Defragmenting uncompressed drives after changing file attributes
   7.13 Files DoubleSpace cannot compress
   7.14 Microsoft Defragmenter runs out of memory while you are
	  compressing a drive.
   7.15 DoubleSpace and PC-Vault
   7.16 Maximum size of a compressed drive
   7.17 DoubleSpace could not mount a drive due to problems with the drive
   7.18 DoubleSpace finishes installation, but you cannot access your
	  Hardcard.
   7.19 You receive a DoubleGuard Alarm message
   7.20 A compressed drive is currently too fragmented to mount
   7.21 DoubleSpace displays the message "Your computer is running with an
	  incompatible version of DBLSPACE.BIN" 
   7.22 Using the DBLSPACE command after bypassing DBLSPACE.BIN
   7.23 Removing the write-protection from a compressed floppy disk
   7.24 Automounting and Norton Disk Cache
   7.25 Undelete utilities and DoubleSpace

1. NOTES ON SETUP
================

1.1 You deleted files from the directory that Setup needs
    to install the optional programs.
---------------------------------------------------------
If you typed SETUP /E at the command prompt, Setup displayed
the "Setup did not find the files it needs in the directory
specified" message, and you think you deleted the files from
your hard disk, carry out the following procedure.

1. Reinstall MS-DOS 6.2.

   Follow the instructions on your screen. When Setup displays
   the "This version of MS-DOS 6.2 is designed for computers that
   do not yet have an operating system" message, choose to
   continue Setup.

2. After Setup is finished, insert Setup Disk 1 in drive A,
   and type A:SETUP /E at the command prompt.

1.2 You need to install MS-DOS manually.
----------------------------------------
If you need to install MS-DOS manually, carry out the following procedure:

1. Insert Setup Disk 1 in drive, and restart your computer.

2. After the first screen appears, quit Setup by pressing F3 twice.

3. Transfer your system files to your hard disk by typing SYS A: C:
   at the command prompt.

4. Create a directory on your hard disk that will contain your MS-DOS 6.2
   files.

5. Copy all the decompressed files (files without an underscore in
   their extension) on Setup Disk 1 to your MS-DOS directory.

6. Use the EXPAND command to decompress the rest of the files on your Setup
   disks and copy them to your MS-DOS directory. You must expand the
   compressed files one at a time, and specify a new extension for each
   one. For example, to decompress the EGA.SY_  file and copy it to the 
   DOS directory, type the following at the command prompt:

   A:EXPAND EGA.SYS C:\DOS\EGA.SYS
   
   For more information about the EXPAND command and the location and
   extensions of specific files, see the PACKING.LST file on the Setup
   disks.
   
7. Create an AUTOEXEC.BAT and CONFIG.SYS file, and store them in the root 
   directory of drive C. For more information about creating these files, 
   see the chapter "Configuring Your System" in the MICROSOFT MS-DOS 6
   USER'S GUIDE.

8. Restart your computer.

1.3   Additional Keyboard and Codepage Support
----------------------------------------------
MS-DOS 6.2 includes the KEYBRD2.SYS and EGA2.CPI files, which
offer additional keyboards and codepages. You use these files just
as you would the KEYBOARD.SYS and EGA.CPI files. MS-DOS also
includes new country settings in COUNTRY.SYS.

The KEYBRD2.SYS file is essentially similar to KEYBOARD.SYS. 
The differences between KEYBOARD.SYS and KEYBRD2.SYS are:

 o  KEYBRD2.SYS contains support for the following keyboards, which
    are not supported by KEYBOARD.SYS:

    Country/Language             Keyboard layout   Keyboard ID
    ----------------             ---------------   -----------
    Canada (standard CAN/CSA-Z keyboard)   cf      243.200-92
    Brazil (secondary standard keyboard)   br      274, 275
    Greece                                 gk      319
    Iceland                                is      161
    Romania                                ro      333
    Turkish                                tr      440, 179

 o  The KEYBRD2.SYS file does not include support for the following
    keyboards supported by KEYBOARD.SYS:

       Switzerland (German)
       Switzerland (French)
       Japan               

 o  The KEYBRD2.SYS file provides access to a few keyboards by keyboard
    layout (two-letter code) only. KEYBOARD.SYS provides access to these 
    keyboards by either keyboard layout or keyboard ID. The affected 
    keyboards are:

       Poland
       Czechoslovakia (Czech)
       Czechoslovakia (Slovak)
       Yugoslavia
       Hungary

 o  KEYBRD2.SYS contains changes to the German keyboard that are
    not in KEYBOARD.SYS. In the German keyboard, the SHIFT lock 
    behavior of the top row of the keyboard now remains unaffected, 
    and is now functionally the same as the US keyboard (that is,
    "typewriter mode" has been removed).

The EGA2.CPI file is similar to the EGA.CPI file, except that the two
files contain different code pages. EGA2.CPI contains the following:

    850 - Multilingual (in both EGA2.CPI and EGA.CPI)
    852 - Eastern European (in both EGA2.CPI and EGA.CPI)
    857 - Turkish
    861 - Icelandic
    869, 737 - Greek

MS-DOS 6.2 includes new country settings in COUNTRY.SYS that use the
new keyboards and code pages.  COUNTRY.SYS contains the following
countries with their supported code pages:
    
    Country or language    Country       Character sets
			   code
    ------------------------------------------------------
    Greece                 030           869, 737
    Iceland                354           861, 850
    Romania                040           852, 850
    Turkish                090           857, 850
					   
You use the KEYBRD2.SYS and EGA2.CPI files just as you would 
KEYBOARD.SYS and EGA.CPI. These files can be used in any combination.

For example, to use the new Icelandic settings, carry out the following
steps:

1. Add the following commands to your AUTOEXEC.BAT file:

   REM ICELAND SETTINGS
   MODE CON CP PREPARE=((861) C:\DOS\EGA2.CPI)
   MODE CON CP SELECT=861
   KEYB IS,,C:\DOS\KEYBRD2.SYS

2. If you also need support for codepage 850 (Multilingual), add 
   the following commands to your CONFIG.SYS file:
		 
   REM ICELAND SETTINGS
   COUNTRY=354,861,C:\DOS\COUNTRY.SYS
   DEVICE=C:\DOS\DISPLAY.SYS CON=(,,2)

   Add the following commands to your AUTOEXEC.BAT file:

   REM ICELAND SETTINGS
   NLSFUNC
   MODE CON CP PREPARE=((861,850) C:\DOS\EGA2.CPI)
   MODE CON CP SELECT=861
   KEYB IS,,C:\DOS\KEYBRD2.SYS

3. Restart your computer.


1.4  Switching Between Modes on Dual-Mode Keyboards
----------------------------------------------------
MS-DOS 6.2 includes dual-mode keyboard support for Greek and French 
Canadian keyboards. These keyboards allow you to easily switch between 
two different keyboard modes. When your computer starts with the
Greek or French Canadian keyboard, the primary mode is active. 
To switch modes, press the appropriate key combination (listed below).

The key combinations for the Greek keyboard are as follows:
		    
		    Mode description    Key combination      
		    ----------------    ---------------     
  Primary mode      Latin               ALT+RIGHT SHIFT
  Secondary mode    Greek               ALT+LEFT SHIFT
		    
The key combinations for the French Canadian keyboard are as follows:
		    
		    Mode description    Key combination      
		    ----------------    ---------------     
  Primary mode      Latin               CTRL+RIGHT SHIFT
  Secondary mode    Latin II            CTRL+LEFT SHIFT


2. MEMMAKER AND MEMORY MANAGEMENT
=================================

2.1 Intel Expanded-Memory Driver (EMM.SYS)
------------------------------------------
If you use Intel's EMM.SYS driver with Aboveboard, use EMM.SYS
version 4.0 revision E if you an ISA system, or EMM.SYS version 4.0
revision D if you have an MCA or other system. Contact Intel for a
free upgrade.

2.2 Running MemMaker on a Computer with PC-NFS
----------------------------------------------
If you use PC-NFS network software, carry out the following procedure
before you run MemMaker:

1. Open your MEMMAKER.INF file by using any text editor. This file is
   in the directory that contains your MS-DOS files.

2. Add the following line to the file:

   *NET

3. Save the file, and then run MemMaker.

2.3 You have a Super VGA display and want to conserve memory.
-------------------------------------------------------------

If you use Microsoft Windows on an 80386 computer with extended
memory and a Super VGA display, you can use the MONOUMB.386 file, in
conjunction with MemMaker, to conserve conventional memory for
running programs.

To conserve memory if you have a Super VGA display:

1. Open your Windows SYSTEM.INI file, and find the [386Enh] section.

2. Add a DEVICE command for the MONOUMB.386 file, which is located
   in your MS-DOS directory. For example, if your MS-DOS files are in
   C:\DOS, add the following line to this section:

   DEVICE=C:\DOS\MONOUMB.386

3. Save the file, and restart your computer.
  
4. After your computer starts, run MemMaker by typing MEMMAKER at the
   command prompt.

5. Choose Custom Setup. On the Advanced Options screen, answer Yes to
   the question "Use monochrome region (B000-B7FF) for running programs?"
  
   Follow the instructions on your screen.

2.4 Using MemMaker with IBM LAN
-------------------------------
Before you run MemMaker, you might need to make adjustments to the
parameters specified for your IBM LAN support driver, DXMC0MOD.SYS. In
your CONFIG.SYS file, make sure that the DEVICE command that loads
DXMC0MOD.SYS includes one of the following before you run MemMaker:

o The first three parameters, as in the following example:

  DEVICE=C:\DXMC0MOD.SYS 400000000001,D800,1

o No parameters, as in the following example:

  DEVICE=C:\DXMC0MOD.SYS

o Some parameters and enough commas to fill in the first three
  parameters, as in the following example:

  DEVICE=C:\DXMC0MOD.SYS 400000000001,,

2.5 MemMaker and Adaptec SCSI devices
-------------------------------------
MemMaker is compatible with Adaptec SCSI devices. However, if you use
the ASPI4DOS.SYS driver to support your SCSI device, MemMaker by default
will exclude this driver from the optimization process. If you don't
use the SCSI device as your startup or boot drive, you can include the
ASPI4DOS.SYS driver in the optimization process. To do so, remove the
^ASPI4DOS entry in the MEMMAKER.INF file, and then run MemMaker.

2.6 Using MemMaker on a computer with PC Tools or PC-DOS RAMBoost
-----------------------------------------------------------------
You can use MemMaker or RAMBoost with MS-DOS, but not both at the
same time. MemMaker will prevent RAMBoost from loading, but not
remove its DEVICE= command from your CONFIG.SYS.

2.7 EMM386 detects an error in an application
---------------------------------------------
If EMM386 displays a message such as "EMM386 has detected error
#12 in an application," this indicates that the processor
has reported an exception error to EMM386. An exception error
typically occurs when an application gives the processor an
instruction under invalid or unexpected conditions. In most cases,
these errors are related to a specific program. If you are receiving
an error that does not occur with any particular application, the
error might be caused by a device driver or a memory-resident
(terminate-and-stay-resident) program.

To avoid these errors:

  o  Try to identify the program involved. One way to do this is
     to see if the error occurs when the program is not running.
     If you suspect a memory-resident program or device driver,
     try bypassing it when your computer starts.

  o  Try disabling EMM386. If a particular application is to blame,
     disabling EMM386 might allow that application to generate an
     error message. Disabling EMM386 might also change
     your memory configuration so that the error no longer occurs.

  o  Try changing the order in which you load device drivers and
     memory-resident programs. This might help because some
     errors occur only under specific memory conditions.

  o  If error 12 is occurring, this indicates that a stack is being used
     incorrectly. Try adding the following command to your CONFIG.SYS
     file:

	STACKS=18,512

  o  If error 13 is occurring, the program may be trying to use protected
     mode without cooperating with EMM386. You may need to obtain a
     VCPI-compliant version of the program, or not load EMM386 when
     using this application.

2.8  MemMaker no longer aggressively scans upper memory by default
------------------------------------------------------------------
By default, the MS-DOS 6.2 version of MemMaker does not scan upper
memory aggressively. Instead, the MemMaker option "Scan the upper 
memory area aggressively?" is set to No, and MemMaker limits its search 
for available UMBs to memory addresses C600 through EFFF. In contrast,
the MS-DOS 6 version of MemMaker did scan upper memory aggressively 
by default: in addition to scanning memory in the C600-EFFF range, 
it also scanned addresses in the range F000 through F7FF. 

To make more memory available for running programs, run MemMaker in 
Custom mode and change the "Scan the upper memory area aggressively?" 
option to Yes. (Note that, on some computers, putting UMBs in this 
range prevents the computer from starting properly.)

Note: If you last ran MemMaker with the "Scan the upper memory
      area aggresively" option set to Yes, then the next time
      you run MemMaker, it leaves that option set to Yes.

2.9 Additional MemMaker Troubleshooting Information
---------------------------------------------------
If you tried the troubleshooting procedures in the chapter "Making
More Memory Available," and you were referred to this file,
determine if one of the following conditions applies to your 
computer:

o If your computer uses an Adaptec controller card, you might not be
  able to use EMM386 unless you have the ADAPTEC.SYS device driver.
  To obtain the device driver, contact Adaptec or your user-group
  bulletin board (BBS) on the Association of PC User User Groups
  (APCUG) network.

o If your computer uses an SCSI (small computer system interface)
  hard disk or other device, or an EDSI (enhanced system device
  interface), or an MCI (Micro Channel Architecture) device, you
  might need to use double-buffering with EMM386.EXE. For more
  information about adding double-buffering, restart your computer
  with EMM386.EXE, and then type HELP DOUBLE-BUFFERING at the 
  command prompt.


3. WINDOWS
==========

3.1 Your computer uses a Windows 3.0 permanent swap file.
---------------------------------------------------------
If your computer uses a Windows 3.0 permanent swap file, run
the SPATCH.BAT program to make the swap file compatible with MS-DOS 6.
To do so, carry out the following procedure:

1. Copy the SPATCH.BAT file to your hard disk. To determine the location of
   the file on the Setup disks, view the PACKING.LST file on Setup Disk
   1.

2. Type the following at the command prompt:

   SPATCH [DRIVE]:[PATH]SWAPFILE.EXE
  
   For the DRIVE and PATH parameters, specify the location of
   your SWAPFILE.EXE file.

3. Follow the instructions on your screen.

   The program modifies the SWAPFILE.EXE for use with MS-DOS 6
   and saves a backup copy as SWAPFILE.SAV. After you have confirmed
   the file works correctly, you can delete the SWAPFILE.SAV file.

3.2 Using compressed floppy disks with Windows File Manager
-----------------------------------------------------------
If you are using compressed floppy disks with automounting enabled,
you might encounter error messages or other problems while using File 
Manager. To work around these problems, press the F5 key twice.

For example, if you change from a compressed to an uncompressed floppy
disk, the drive button for the compressed floppy disk's host drive 
remains until you press the F5 key twice.


4. HARDWARE COMPATIBILITY WITH MS-DOS
=====================================

4.1 Hardcard
------------
To use DoubleSpace on a system that uses its Hardcard drive as its
startup drive, see section 7.18. For additional Hardcard
information, see the following:

a) Hardcard II

   If you can't use Plus Development Hardcard II or Hardcard
   II XL when running EMM386.EXE, specify the exclude (x=)
   switch to prevent EMM386 from conflicting with the card's
   BIOS address.

   To configure EMM386, run MemMaker.

b) Hardcard 40 or Passport

   If you are using Hardcard 40 or a Passport removable
   disk, and you have a DEVICE command in your CONFIG.SYS file
   for PLUSDRV.SYS, disable or remove the DEVICE command.
   Then run MS-DOS 6.2 Setup. After Setup is complete, reenable or
   restore the DEVICE command for PLUSDRV.SYS. Make it the last line
   in the file.

c) If you are unable to access your compressed drive after installing
   DoubleSpace on your Hardcard, try the following:

   1) Add a DBLSPACE /MOUNT command to your AUTOEXEC.BAT file to mount
      the compressed volume file on the Hardcard every time you start
      your computer.

   2) Or, ensure that there is at least one device driver (for example,
      ANSI.SYS) loaded in your CONFIG.SYS file AFTER the ATDOSXL.SYS
      driver but BEFORE the DBLSPACE.SYS driver.

5. MICROSOFT PROGRAMS
=====================

5.1 Microsoft Anti-Virus
------------------------
Before cleaning a program file, make sure you have a backup copy of it.
If you clean a program file, and the program is corrupted, reinstall the
program. If Anti-Virus again detects a virus, there is a chance the
detection is in error; contact your software vendor to determine if an
updated version of the program is available.

5.2 Running Microsoft Backup for MS-DOS under Windows
-----------------------------------------------------
You should not run Backup for MS-DOS while Windows is running. However,
if you do, and if your system is not configured correctly, Backup
might display the following symptoms:

o Backup appears to stop running--for example, the clock runs, but
  there is no disk activity.

o Backup reports problems while testing the second floppy disk during
  the compatibility test. For example, it might display a "Diskette
  not properly seated" message or ask for Disk 1 repeatedly.

o Windows displays a message that the DMA buffer size needs to be
  increased.

o Backup quits unexpectedly.

You can correctly configure your system by carrying out the following
procedure.

1. Open your SYSTEM.INI file, and add a DMABufferSize=32 line to the
   [386Enh] section.

2. When you run Backup, make sure that you specify with the Settings
   command from the Control menu that Backup run with the Exclusive
   and Full Screen options.

5.3  Backup for Windows stops running at the end of the compatibility test
--------------------------------------------------------------------------
If Backup for Windows stops running at the end of the Compatibility
Test, you might be loading an incompatible third-party backup driver
in your SYSTEM.INI file. Carry out the following procedure.

NOTE  This procedure disables your third-party backup program.

1. Open your SYSTEM.INI file, and locate the [386Enh] section.

2. Determine whether any of the following lines are included in this
   section:

   DEVICE=FASTBACK.386
   DEVICE=VFD.386
   DEVICE=CPBVXD.386
   DEVICE=VIRWT.386

3. If you find any of these lines, add a semicolon (;) to the front
   of the line.

4. Save the file, restart Windows, and run Backup for Windows again.

5.4  Running Microsoft Backup with TI4000 and Gateway NOMAD computers
---------------------------------------------------------------------
To avoid a conflict between the Turbo feature and Microsoft Backup
for Windows or MS-DOS, add a /L0 switch to the DEVICE command in
your CONFIG.SYS that loads the BATTERY.PRO file. Or, before you
run Microsoft Backup, type SETPOWER /L0 at the command prompt.

5.5 Microsoft Defragmenter
--------------------------
If you received the "Insufficient Memory" message from Microsoft
Defragmenter, use the MEM command to determine how much conventional,
upper, and extended (XMS) memory is available. In addition to using
all available conventional memory, Defragmenter can make use of up
to 384K of extended memory and 12K of upper memory.

To increase available memory, carry out the procedures in "An MS-DOS
program displays an out-of-memory message" in the chapter "Diagnosing
and Solving Problems" in the MICROSOFT MS-DOS 6 USER'S GUIDE.

If less than 384K of extended memory is available, carry out
the procedures in "Freeing Extended Memory" in the "Making More
Memory Available" chapter in the MICROSOFT MS-DOS 6 USER'S GUIDE.


6. THIRD-PARTY PROGRAMS
=======================

6.1 4DOS and NDOS
-----------------
4DOS and NDOS are compatible with MS-DOS 6.  However, to use some of the
new features in MS-DOS 6.2 (such as MemMaker, the LOADHIGH /L switch,
DIR compression switches, and the ability to bypass startup commands),
contact JP Software to obtain 4DOS 4.02 or later, or Symantec to obtain
Norton Utilities 7.0 or later.

If you use multiple configurations, 4DOS or NDOS will not automatically
run your AUTOEXEC.BAT file unless you include a /P on the SHELL line in
your CONFIG.SYS file.

To use MS-DOS 6.2 Help instead of 4DOS or NDOS Help, start it by using
COMMAND /C HELP, or define a 4DOS or NDOS alias to run HELP.COM from
your MS-DOS 6.2 directory.

6.2 Above Board 286 and Above Board Plus Installation
    Programs
-----------------------------------------------------
Do not use an Above Board installation program dated May 1989
or earlier until you disable programs that use extended memory,
such as SMARTDrive or RAMDrive. You might lose data if you leave
these programs enabled. After you have installed Above Board,
you can reenable these programs.

6.3 CodeView
-----------
CAUTION  Using versions 3.0 to 3.13 of the CodeView CV.EXE
file may cause data loss if your system has an 80386 memory
manager (such as EMM386.EXE) and device drivers or programs
that use extended memory. To determine which version you
have, type CV.EXE at the command prompt.

6.4 Colorado Tape Backup
------------------------
If you receive a message that you have two versions of the
VFINTD.386 file loaded, you probably need to edit your
SYSTEM.INI file. To do so, carry out the following procedure:

1. Open your SYSTEM.INI file and locate the [386Enh] section.
   You should see two lines similar to the following:

   DEVICE=C:\TAPE\CMSDTAPE.386
   DEVICE=C:\DOS\VFINTD.386

2. If you plan to use your Colorado Tape Backup program, add a semi-
   colon (;) before the DEVICE command for the VFINTD.386 file. If you
   plan to use Microsoft Backup, add a semi-colon before the DEVICE
   command for the CMSDTAPE.386 file.

3. Save the file, and restart Windows.

6.5 Fastback Plus
-----------------
If you have a version of Fifth Generation Systems Fastback Pluse earlier
than 3.0, use the LOADFIX command before running Fastback Plus or the
Fastback Plus installation program to ensure that you don't lose data. To
do so, type the following at the command prompt:

LOADFIX FB.EXE

or

LOADFIX FBINSTAL.EXE

6.6 Norton Desktop for Windows 2.0
----------------------------------
Setup adds a second Tools menu which contains Microsoft Backup and
Antivirus commands (if you installed these Windows programs),
as well as a DoubleSpace Info command (if DoubleSpace is installed).

If you use DoubleSpace to compress the drive that contains
SmartCan, you might experience system problems afterward.
To correct this, reinstall Norton Desktop for Windows.

For information about Norton AntiVirus and DoubleSpace,
see the following section.

6.7 Norton Utilities
--------------------
The "Clear Space" option of Norton Speed Disk (prior to version 7.0)
is incompatible with DoubleSpace drives. For an updated version of
Norton Speed Disk, contact your software vendor.

Do not use the WipeInfo utility on DoubleSpace drives. It can cause
lost clusters. If you have already used this option, use the
SCANDISK command to fix the lost clusters.

If Norton AntiVirus is running when you use DoubleSpace to compress
the drive that contains the NAV_.SYS file, DoubleSpace leaves a copy
of the NAV_.SYS file on the host drive. This prevents Norton AntiVirus
from reporting a virus infection during the compression process. After
the compression process is complete, you can safely delete the copy of
NAV_.SYS on the host drive.

If you use the Norton Cache or Speedrive utilities, load the utility
after the DEVICE command that loads DBLSPACE.SYS. For more information,
see section 7.24.

6.8 PC Tools
------------
If PC Shell does not show all of the files or directories on your drive, 
quit PC Shell immediately and contact Central Point Software for an update. 

CAUTION: Do not attempt to use PC Shell on that drive; severe data 
	 loss might occur. This problem affects both compressed and 
	 non-compressed drives. 

The DISKFIX /SCAN option in PC Tools can cause lost clusters on
DoubleSpace drives. Avoid using this option. (If you have already 
used this option, use ScanDisk to fix the lost clusters.)

The FORMAT command of PC Tools version 7.1 conflicts with
MS-DOS 6.2. Use the FORMAT command that comes with MS-DOS 6.2.

The COMPRESS command of PC Tools versions 6.0 and 5.5 
is incompatible with DoubleSpace.

6.9  QEMM's Stealth DoubleSpace Feature
---------------------------------------
The Stealth DoubleSpace feature of QEMM 7.01 is incompatible with 
MS-DOS 6.2. Version 7.02 is compatible with MS-DOS 6.2, but not 
with DEFRAG.EXE or DoubleSpace's Automount feature. Version 7.03 
is fully compatible with MS-DOS 6.2 and DoubleSpace; it is available
to all QEMM 7 users through bulletin board systems such as BIX, 
CompuServe, and QuarterDeck BBS, as well as directly from QuarterDeck
Office Systems.

If you use the Stealth DoubleSpace feature of QEMM version 7.01 
or 7.02, see the appropriate section below.

QEMM version 7.01
-----------------
The Stealth DoubleSpace feature of QEMM 7.01 is incompatible with 
MS-DOS 6.2. If you use QEMM version 7.01 and the Stealth DoubleSpace
feature, your computer will not start properly. 

To work around this problem, press F8 when your computer starts.
Answer Y to all prompts except the following:  

    DEVICE=C:\QEMM\ST-DBL.SYS [Y/N]?

When MS-DOS displays this prompt, answer N. (The pathname for
ST-DBL.SYS may be different on your computer.) After your computer 
starts, edit your CONFIG.SYS file and make the following changes:

 * Disable the DEVICE command for ST-DBL.SYS by using the REM command.
 
 * Add a DEVICE command for DBLSPACE.SYS. For example:

    DEVICE=C:\DOS\DBLSPACE.SYS /MOVE

QEMM version 7.02
-----------------
The Stealth DoubleSpace feature of QEMM version 7.02 is compatible
with MS-DOS 6.2, with the following exceptions:

 * You cannot use QEMM version 7.02's Stealth DoubleSpace feature
   while DoubleSpace's Automount feature is enabled. To turn
   Automounting off, type DBLSPACE /AUTOMOUNT=O at the command prompt,
   and then restart your computer.

 * You cannot run the Microsoft Defragmenter (DEFRAG.EXE) while QEMM 
   version 7.02's Stealth DoubleSpace driver is installed. To run
   DEFRAG.EXE, disable the Stealth DoubleSpace driver, and then restart 
   your computer. After you finish running DEFRAG.EXE, you can reenable
   the Stealth DoubleSpace driver and restart your computer.

6.10  Johnson Computer Systems PC-Vault and PC-Vault Plus
---------------------------------------------------------
If you use version 4.6 or earlier of the PC-Vault or PC-Vault Plus 
hard disk protection system, do not use the Maximum Floppy
Boot Protection option if you use DoubleSpace.

In these versions of PC-Vault and PC-Vault plus, the Maximum Floppy 
Boot Protection option is incompatible with DoubleSpace and may 
cause data loss. If your version of PC-Vault or PC-Vault Plus
is earlier than 4.6, contact Johnson Computer Systems for an upgrade.

6.11  AddStor Double Tools 
--------------------------
AddStor's Double Tools version 1.0 includes a version of DBLSPACE.BIN
that is incompatible with MS-DOS 6.2. When you install Double Tools,
do not check the "Install enhanced DoubleSpace drivers" box.
If you do, Double Tools will replace the MS-DOS 6.2 DBLSPACE.BIN 
file with the Double Tools version of DBLSPACE.BIN. The next time you
start your computer, it will display the message "Wrong DBLSPACE.BIN 
version" and none of your compressed drives will be mounted. 


7. DOUBLESPACE
==============
7.1 Converting Your XtraDrive Disk-Compression Software
    to DoubleSpace
----------------------------------------------------------
If your computer uses XtraDrive disk compression, use its
uninstallation program to remove the compression, and then
install DoubleSpace.

7.2  Converting Stacker 2.x or 3.0 Software to DoubleSpace
----------------------------------------------------------
If your drive has been compressed using Stacker version 2.x or 3.0,
you can order a utility which automatically converts data that was
compressed by Stacker compression software to the DoubleSpace format.
To order this utility, use the Conversion Disk Offer coupon in the
back of your user's manual.

If your drive was compressed using a version of Stacker other than
version 2.x or 3.0, carry out the procedure in sections 7.3 or 7.4 below.

7.3  Converting Stacker 3.1 Software to DoubleSpace
---------------------------------------------------
If your drive has been compressed using Stacker version 3.1, carry
out the following procedure to remove Stacker 3.1 and install
DoubleSpace. 

1. Use Stacker's UNSTACK command to unstack all your Stacker drives.
   (If you have floppy disks compressed by using Stacker, either
   unstack them now or make sure they were configured using Stacker's
   StackerAnywhere feature.)

2. Change to the root directory of your startup hard disk drive,
   and then type the following commands:

   ATTRIB -R-H-S STACKER.INI
   ATTRIB -R-H-S DBLSPACE.BIN
   DEL STACKER.INI
   DEL DBLSPACE.BIN
   
3. Restart your computer.

4. Run DoubleSpace Setup by typing DBLSPACE at the command prompt.

7.4  Converting Other Disk-Compression Software to DoubleSpace
--------------------------------------------------------------
If you are not using Stacker 2.x, 3.0, or 3.1 disk compression 
or XtraDrive disk compression, carry out the following procedure 
to convert your disk-compression software to DoubleSpace.

1. Install MS-DOS 6.2 if you haven't already done so.

2. Use Microsoft Backup for MS-DOS to back up the files on your
   hard disk. If you didn't install Backup for MS-DOS during Setup,
   see the chapter "Getting Started" in the MICROSOFT MS-DOS 6 USER'S
   GUIDE for instructions on installing it.

3. If your Setup disks are compatible with drive A, insert
   Setup Disk 1 in drive A, and restart your computer. After
   Setup displays the first screen, quit Setup by pressing F3 twice.

   If your Setup disks are not compatible with drive A,
   create a startup floppy disk for drive A. To do this, insert
   Setup Disk 1 in drive B, and a blank floppy disk in drive A.
   Then type B:SETUP /F at the command prompt.
  
   When prompted, choose to install MS-DOS on the floppy disk
   in drive A. After Setup is finished, leave the disk in drive A,
   and restart your computer.

4. Use the FORMAT command to format the drive that contains the
   file that contains all of your compressed files. If you don't know
   where this file is located, see your disk-compression documentation.

   If you are reformatting drive C, include the /S switch to transfer
   system files to it.

5. If you formatted drive C, make sure Setup Disk 1 is in drive A
   or B, and type A:SETUP or B:SETUP at the command prompt.

   Follow the instructions on your screen.

6. After Setup is complete, install DoubleSpace by typing DBLSPACE
   at the command prompt. Follow the instructions on your screen.

7. Use Backup for MS-DOS to restore the files you backed up.

   NOTE  When you run Microsoft Backup, you will have to configure it
   again. Also, you will need to retrieve the catalog file from your
   backup floppy disks. To do so, choose the Catalog button in the
   Restore dialog box.

7.5 DoubleSpace Setup indicates that your computer is running an
    incompatible disk-caching program.
----------------------------------------------------------------
If DoubleSpace Setup displays a message indicating your computer is
running an incompatible disk-caching program, open your CONFIG.SYS or
AUTOEXEC.BAT file, and delete the command that loads your
disk-caching program. If you want to use a disk cache, add a line for
the MS-DOS 6.2 SMARTDRV program in your AUTOEXEC.BAT file. For example,
if your MS-DOS files are in a directory named DOS, add the following
line:

C:\DOS\SMARTDRV.EXE

Quit your text editor, and restart your computer. Run DoubleSpace again.

7.6 Your compressed drive runs out of disk space.
-------------------------------------------------
If your compressed drive runs out of free disk space, you can
use the following techniques to free some space on the drive:

o Enlarge that drive.

o Carry out the DBLSPACE /DEFRAG /F and DBLSPACE /DEFRAG commands
  on that drive.

The rest of this section explains each technique.

Enlarging a Compressed Drive
----------------------------
You can enlarge a compressed drive to make more space available on it.
Enlarging a compressed drive uses free space on the uncompressed (host)
drive.

To enlarge the compressed drive:

1. Start the DoubleSpace program by typing DBLSPACE at the command prompt.

2. Select the compressed drive you want to enlarge, and then choose
   the Change Size command from the Drive menu.

   The Change Size dialog box appears. The New Free Space line shows how
   much free space the compressed and uncompressed drives will have if you
   choose OK.

3. Specify a smaller number for New Free Space on the uncompressed
   drive. Notice that as you change this number, DoubleSpace adjusts
   the New Free Space amount for the compressed drive. When the New Free
   Space amount for both drives is what you want, choose OK.

   DoubleSpace enlarges the compressed drive.

Carrying Out the DBLSPACE /DEFRAG /F and DBLSPACE /DEFRAG Commands
on your Compressed Drive
------------------------------------------------------------------
You can sometimes free additional space on a compressed drive by
more fully defragmenting the drive. 

NOTE  You might want to carry out the following procedure overnight, since
defragmenting a large or badly fragmented drive can take a long time.
(To carry out the entire procedure overnight, create a batch file that
contains both the commands in the procedure.)

To free space by defragmenting the drive twice:

1. Make the compressed drive the current drive.

2. Type DEFRAG drive: /F at the command prompt

   Where drive: is the compressed drive. For example, DEFRAG C: /F.
   DEFRAG will fully defragment the drive's file allocation table,
   then start DBLSPACE /DEFRAG to consolidate the free space in
   the CVF.

3. When DEFRAG finishes, type DBLSPACE /DEFRAG /F at the command prompt.

   DoubleSpace re-consolidates the free space on the drive so there
   is as much free space as possible.

7.7 Your uncompressed (host) drive runs out of disk space
---------------------------------------------------------
If your uncompressed (host) drive runs out of free disk space, you
can enlarge it by reducing the size of any compressed drives that are
stored on that uncompressed drive. Of course, this will reduce the
amount of free space on the compressed drive(s).

To enlarge the uncompressed (host) drive:

1. Start the DoubleSpace program by typing DBLSPACE at the command prompt.

2. Select the compressed drive whose size you want to reduce, and then
   choose the Change Size command from the Drive menu. (Select
   a compressed drive that is stored on the uncompressed drive that's
   out of space. To find out which compressed drives are stored
   on that uncompressed drive, type DBLSPACE /LIST at the command prompt.)

   The Change Size dialog box appears. The New Free Space line shows
   how much free space the compressed and uncompressed drives will have
   if you choose OK.

3. Specify a larger number for the New Free Space on the uncompressed
   drive. Notice that as you change this number, DoubleSpace adjusts
   the New Free Space amount for the compressed drive. When the New Free
   Space amount for both drives is what you want, choose OK.

   DoubleSpace reduces the size of the compressed drive, which makes
   more free space available on the corresponding uncompressed drive.

7.8 DoubleSpace did not compress all of your files because
    the drive ran out of disk space.
----------------------------------------------------------
If DoubleSpace indicates that it could not compress some
of your files because there was not enough disk space, carry
out the following procedure.

1. To determine which drive is your uncompressed drive, type
   DBLSPACE /LIST at the command prompt.

2. Using Microsoft Backup, back up to floppy disks the files
   on the uncompressed drive that were not compressed.

3. Delete the files on the uncompressed drive that were not compressed.

4. Type DBLSPACE at the command prompt.

5. From the Drive menu, choose Change Size.

6. To increase the size of your compressed drive, decrease the size
   of your uncompressed drive, and choose OK.

7. From the Drive menu, choose Exit, and use Backup to restore
   the files you backed up to your compressed drive. If you run out of
   space again, repeat steps 5 through 7 until the compressed drive
   is large enough.

7.9 Windows displays the message "The permanent swap file is corrupt."
----------------------------------------------------------------------
If you use a Windows permanent swap file, it must be located on an
uncompressed drive. If your permanent swap file is on a compressed
drive, Windows displays the message "The permanent swap file is corrupt"
when it starts.

When you install DoubleSpace, the DoubleSpace Setup program checks for
the existence of a Windows permanent swap file. If it finds one,
DoubleSpace Setup moves the swap file to your uncompressed drive.
However, if you install Windows after installing DoubleSpace, or if you use
Control Panel to change the location of your permanent swap file, your
swap file might end up on a compressed drive. (When you specify a drive
for your permanent swap file, Windows allows you to choose a compressed
drive.)

To move your permanent swap file to an uncompressed drive:

1. Start Windows.

2. At the "Permanent swap file is corrupt" screen, type Y in response
   to the question "Do you want to delete this swap file?", and
   then press ENTER.

3. Open Control Panel, and then double-click the 386 Enhanced icon.

4. Choose the Virtual Memory button. Windows displays a dialog box stating
   that a corrupt swap file was found and asks if you want to set the
   file's length to zero.

5. Choose the Yes button. Windows displays another Virtual Memory dialog box.

6. Choose the Change button. Windows displays swap-file settings.

7. In the Drive list box, select a drive that is not compressed. In the
   Type list box, select "Permanent."

   If your uncompressed drive does not have enough free space to create a
   permanent swap file, create a temporary swap file on either your
   compressed or uncompressed drives. (For information about freeing
   space on your uncompressed drive, see section 7.7.)

   When you have finished specifying swap-file settings, choose OK twice,
   and follow the instructions on your screen.

7.10  EXTDISK.SYS displays a warning about drive letters.
---------------------------------------------------------
If you are using DoubleSpace on a Compaq computer, and your CONFIG.SYS file
loads the EXTDISK.SYS device driver, EXTDISK.SYS displays the following
message when it loads:

WARNING: EXTDISK.SYS is not the first device driver to assign drive
	 letters.  Physical hard drive letters will not be contiguous.

The EXTDISK.SYS driver still works properly. It displays this message
because it expects to be the first module to assign drive letters,
but because DBLSPACE.BIN loads before the CONFIG.SYS file and assigns
some drive letters, EXTDISK.SYS is no longer first. (EXTDISK.SYS
displays the message regardless of when the DBLSPACE.SYS device
driver is loaded in the CONFIG.SYS file.)

7.11 You need a special device driver to use your startup drive
---------------------------------------------------------------
If your startup hard disk drive requires a device driver in your CONFIG.SYS
file, do not compress that drive. If you do, your computer will not
start properly, since DoubleSpace will be unable to access your startup
drive. (This is because MS-DOS loads DBLSPACE.BIN, the portion of MS-DOS
that accesses compressed drives, before starting any of the device drivers
in your CONFIG.SYS file.)

To install DoubleSpace on a computer with a startup drive that requires a
special device driver, use DoubleSpace Setup to compress a drive other than
your startup drive, or use DoubleSpace Setup to create a new compressed
drive using free space on any existing drive.

7.12 Defragmenting uncompressed drives after changing file attributes
---------------------------------------------------------------------
You can safely defragment both your compressed or uncompressed
drives, using the Microsoft Defragmenter or another defragmentation
program, as long as you do not change the attributes of your
compressed volume files.

CAUTION  If you change the attributes of a compressed volume file,
	   and then defragment that uncompressed drive without first
	   unmounting the compressed drives, you might lose data.

If you want to fully defragment your uncompressed drive, you must
first unmount all compressed drives located on the uncompressed
drive, remove all their attributes, and then use DEFRAG or another
defragmenter.

7.13 Files DoubleSpace cannot compress
--------------------------------------
Some files (such as .ZIP files) are already compressed. DoubleSpace
might not be able to compress such files any further.

Encrypted data files, such as the Microsoft Mail 3.0 .MMF file, are
not compressible and will be stored in uncompressed form, even if
you store such files on a compressed drive.

You might want to store uncompressible files on an uncompressed drive
rather than on a compressed drive. Doing so can sometimes improve
your system's speed.

7.14 Microsoft Defragmenter runs out of memory while you are compressing
     a drive.
------------------------------------------------------------------------
If the Defragmenter runs out of memory while you are compressing a
drive, quit DoubleSpace, and then carry out the procedure in section
5.5 of this file.

If the Defragmenter still runs out of memory after you have tried
these procedures, there might be too many files on your hard disk
for the Defragmenter to organize. For the program to work correctly,
you might need to delete some files or move them to a floppy disk or
a network drive.

7.15 DoubleSpace and PC-Vault
-----------------------------
See section 6.10.
  
7.16 Maximum size of a compressed drive
---------------------------------------
The maximum size for a DoubleSpace compressed drive is 512 megabytes (MB).
For example, if you compress a disk drive that is 600 MB, the resulting
DoubleSpace drive will be no larger than 512 MB. To compress the rest of
the disk drive, run DoubleSpace, and choose Create New Drive from the 
Compress menu. Make the new compressed drive as large as possible.
(If your drive is very large, you might need to create several new 
compressed drives in order to compress the entire drive.)

7.17  DoubleSpace could not mount a drive due to problems with the drive
------------------------------------------------------------------------
If the message "DoubleSpace could not mount drive X due to problems
with the drive" (in which X is the drive letter) appears when you start
your computer, then the internal organization of the drive has problems
that prevent the drive from being used. DoubleSpace stores each
compressed drive in a special file called a compressed volume file (CVF).
The CVF is a file with the hidden, system, and read-only attributes; it
is stored on an uncompressed drive.

To use the compressed drive again, you need to run ScanDisk on that
drive's compressed volume file, and then restart your system. The
error message includes the name of the compressed volume file on which
you need to run ScanDisk (for example, C:\DBLSPACE.000).

To fix this problem for a compressed drive other than drive C:

  o  Type the SCANDISK command specified by the DoubleSpace error
     message. For example, SCANDISK D:\DBLSPACE.001. (If MS-DOS cannot
     find the SCANDISK program, see the following procedure.)

To fix this problem for compressed drive C, or if MS-DOS cannot find
the SCANDISK program:

1. Insert Setup Disk 1 in drive A (or B) of your computer.

2. Change to the drive that contains Setup Disk 1.

3. To start ScanDisk, type the SCANDISK command as specified by
   the DoubleSpace error message. For example, SCANDISK C:\DBLSPACE.000.
   When ScanDisk displays dialogs describing any problems, choose
   the Fix It button.

4. After ScanDisk has finished, remove the floppy disk and restart
   your computer.

7.18  DoubleSpace finishes installation, but you cannot access your Hardcard
----------------------------------------------------------------------------
See section 4.1, part C.

7.19  You receive a DoubleGuard Alarm message
---------------------------------------------
If a DoubleGuard Alarm message appears, DoubleGuard has detected that
an application has damaged memory that DoubleSpace was using. DoubleGuard
halts your computer to prevent any further damage to your data. 

Normally, each program "owns" a separate area of memory, and does not use
memory that another program is already using. However, a few programs
contain programming errors that cause them to inadvertently use memory
belonging to another program. If such a program inadvertently uses
memory belonging to DoubleSpace, that program could write its own
data over the data DoubleSpace was storing there. Since the data that
DoubleSpace stores in memory usually includes files you are currently
using, this could cause damage to your data. 

DoubleSpace's DoubleGuard safety-checking feature detects when another
program has violated DoubleSpace's memory, and immediately shuts down
your computer to minimize the chance of data loss. (If further disk
activity were to occur instead, you could lose some or all of the 
data on your drive, since the data DoubleSpace has in memory is probably
invalid due to damage by the other program.)

If you receive a DoubleGuard Alarm message, do the following:

1. Restart your computer by pressing CTRL+ALT+DEL or by turning the
   power switch off and then on again.

2. Type the following at the command prompt:

     SCANDISK /ALL

   This runs ScanDisk on all your drives to detect and correct any
   problems that might have been caused by the program that
   violated DoubleSpace's memory.

3. Make a note of which program, if any, you were running when the
   DoubleGuard Alarm occurred. That program is probably (but not
   necessarily) the program that caused the DoubleGuard Alarm.
   If you receive additional DoubleGuard Alarms, take notes about
   what you were doing and see if you can detect a pattern.

7.20  A compressed drive is currently too fragmented to mount
-------------------------------------------------------------
If you receive the message "Compressed drive X is currently too
fragmented to mount" (in which X is the drive letter) when your
computer starts, or if DoubleSpace displays the message "The
X:\DBLSPACE.nnn file is too fragmented to mount," then DoubleSpace
cannot mount the drive because its compressed volume file is stored in
too many fragments on your hard disk. (DoubleSpace stores each
compressed drive in a special file called a compressed volume file (CVF).
The CVF is a file with the hidden, system, and read-only attributes, and
is stored on an uncompressed drive.)

To correct this problem, increase the MaxFileFragments setting in your
DBLSPACE.INI file. DoubleSpace displays the "too fragmented to mount"
error messages because the number of CVF file fragments exceeds this
setting. Follow these steps:

1. Change to the root directory of your startup drive. (If your
   startup drive is compressed, change to that drive's host drive.)

2. Type the following command:

     TYPE DBLSPACE.INI

3. Note the current value for the MaxFileFragments setting.

4. Use the DBLSPACE /MAXFILEFRAGMENTS command to specify a higher value.
   For example, if MaxFileFragments is currently set to 128, you might
   type the following command:

     DBLSPACE /MAXFILEFRAGMENTS=200

5. Restart your computer. DoubleSpace should now be able to mount
   the drive.

If DoubleSpace still cannot mount the drive, follow these steps:

1. Run ScanDisk to check the reliability of your hard disk by typing the
   following at the command prompt:

      SCANDISK /ALL /SURFACE

2. Restart your computer. If DoubleSpace still cannot mount the drive,
   proceed to step 3.

3. Remove the Read-Only, System, and Hidden file attributes on the
   DBLSPACE.<XXX> file. For example, if the file is H:\DBLSPACE.000,
   type the following at the command prompt:

       ATTRIB H:\DBLSPACE.000 -R -S -H

4. Run Microsoft Defragmenter (Defrag) by typing DEFRAG at the
   command prompt.

5. Use the ATTRIB command to reset the file attributes on DBLSPACE.<XXX>.
   For example, if the file is H:\DBLSPACE.000, type the following at
   the command prompt:

       ATTRIB H:\DBLSPACE.000 +R +S +H

6. Restart your computer again. DoubleSpace should now be able to mount
   the compressed drive.

7.21  DoubleSpace displays the message "Your computer is running with an
      incompatible version of DBLSPACE.BIN" 
----------------------------------------------------------------
If you try to run the MS-DOS 6 version of DBLSPACE.EXE with MS-DOS 6.2,
it displays the following message:

  Your computer is running with an incompatible version of DBLSPACE.BIN.
  You must update DBLSPACE.BIN on the root directory of drive @.

DBLSPACE.EXE has detected that its version number does not match that 
of your MS-DOS 6.2 DBLSPACE.BIN. To correct this problem, you need to
update this copy of the DBLSPACE.EXE file.

When you run MS-DOS 6.2 Setup, it updates the DBLSPACE.EXE file in
the directory that contains your MS-DOS files. If there are other
copies of DBLSPACE.EXE elsewhere on your disk -- for example, in the root
directory of your host drive -- Setup does not update those additional
copies. To update them yourself, use the COPY /Y command to copy the 
MS-DOS 6.2 version of DBLSPACE.EXE over the older versions. (The MS-DOS
6.2 version of DBLSPACE.EXE is located in the directory that contains
your MS-DOS files.)


7.22  Using the DBLSPACE command after bypassing DBLSPACE.BIN
-------------------------------------------------------------
If you bypass DBLSPACE.BIN when you start your computer (by pressing
CTRL+F5 or CTRL+F8), then the DBLSPACE command may not work as
expected:

 * Usually, if DoubleSpace is installed, typing DBLSPACE runs the
   DoubleSpace program. However, if you type DBLSPACE when 
   DBLSPACE.BIN is not loaded, DoubleSpace Setup starts instead. 
   If this happens, quit DoubleSpace Setup. 

 * If you type the DBLSPACE /MOUNT command, it reports that there
   are no more drive letters for DoubleSpace to use. (DoubleSpace
   cannot mount a compressed drive unless DBLSPACE.BIN is loaded.)

To use DoubleSpace or your compressed drives, restart your computer
without bypassing DBLSPACE.BIN.


7.23  Removing the write-protection from a compressed floppy disk
-----------------------------------------------------------------
If you are using a compressed floppy disk that is write-protected
and Automounting is enabled, the disk will remain write-protected
until it is unmounted -- even if you remove the write-protect tab 
from it.

To remove the write protection, use either of the following methods:

 * Unmount the floppy disk by using the DBLSPACE /UNMOUNT command, 
   and then try using the disk again (this will automatically 
   remount it). For example, if the disk is in drive B, you would
   type DBLSPACE /UNMOUNT B: and then try using the disk again.
   (If Windows is running, you can't use the DBLSPACE /UNMOUNT
   command. In that case, use the following method.)

 * Insert a different floppy disk in the drive and access it (for
   example, carry out the DIR command on it). This automatically
   unmounts the compressed floppy disk that was previously in the
   drive.) Then, reinsert the compressed floppy disk and try using
   it again (this will automatically remount it).

7.24  Automounting and Norton disk-caching utilities
----------------------------------------------------
If you use a Norton disk-caching utility such as Norton Cache 
(NCACHE2.EXE) or Norton Speedrive (SPEEDRV.EXE) make sure the 
utility is loaded after the DEVICE command for DBLSPACE.SYS. 
If you load one of these utilities before DBLSPACE.SYS, 
DoubleSpace's automounting feature will not work.

7.25  Undelete utilities and DoubleSpace
----------------------------------------
DoubleSpace cannot compress or uncompress drives while an undelete 
utility (for example, Microsoft Undelete's Delete Sentry or Norton's
SmartCan) is running. To compress or uncompress a drive, you will need 
to temporarily disable the undelete utility. Follow these steps:

1. Purge any previously deleted files to conserve disk space. If you 
   are using Microsoft Delete Sentry, type the following at the command 
   prompt:

   UNDELETE /PURGE

   Carry out this command on each drive you plan to compress or uncompress. 
   If you will be uncompressing a drive, you should also purge deleted 
   files from that drive's host drive. To purge deleted files from a 
   drive other than the current drive, specify the drive letter after
   the UNDELETE /PURGE command (for example, UNDELETE /PURGE E:).

   If you use a different undelete utility, see that utility's 
   documentation for information about purging deleted files.

2. Edit your AUTOEXEC.BAT file and use the REM command to disable 
   the command that starts the undelete utility. (For example, if 
   you use Delete Sentry, disable the UNDELETE /S command.)

3. Restart your computer.

4. Try again to compress or uncompress the drive.

5. When you have finished compressing or uncompressing, edit your 
   AUTOEXEC.BAT file, reenable the command that starts the undelete
   utility, and then restart your computer again.

