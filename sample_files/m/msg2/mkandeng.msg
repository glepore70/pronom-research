�MKMSGF MKA      _          ��M�o���E_���� :���;\|���'K�	       �                              mkandeng.msg                                                                                                                                                                                                                                                         IWPAMPTR_MESSAGEFILE_1.01 ENG YN 2
ITitle Program Halt ErrTag ErrTimeframe1 ErrTimeframe2 ErrParm ErrSource ErrObj CreateDef CreateDll CreateRes WriteRes ReadScript ErrFile ErrFormatUnknown
IErrStaticPtr1 ErrStaticPtr2 ErrKeyword ErrPtrNotFound ErrNotNum ErrTimeframe3 ReadDir GeneratedBy WriteRc NoPtrs Help1 Help2 Help3
I
Animated Mouse Pointer for OS/2 - Version 1.01
by Christian Langanke 1996,1997 - All rights reserved
National Language Support by Christian Langanke

Imakeand - AniMouse resource DLL file creation program

IInterrupted by user.
I%1: error:
Ivalue of parameter /TIMEFRAME:nnn must be numeric.
Ivalue of parameter /TIMEFRAME:nnn
must be in range of %1 to %2.
IInvalid parameter �%1�.
Iscriptfile or directory �%1� not found.
I
required file 
�%1� 
could not be found.
Icreating definition file
Icreating dll file
Icreating resource file
Iwriting resource file to dll
Ireading script file �%1�
Iinvalid script file �%1�.
�Animation_Script� on the first line is missing.
I%1(%2)%3 Invalid format ignored.
I%1(%2)%3 The static pointer is not the first pointer within the animation.
I%1(%2)%3 More than one static pointer defined in this animation.
I%1(%2)%3 Invalid keyword �%4�.
I%1(%2)%3 File �%4� not found.
I%1(%2)%3 timeframe value not numeric.
I%1(%2)%3 timeframe value must be in range of %4 to %5.
Ireading source directory �%1�
Igenerated at %1 %2 by
Iwriting rc file
INo pointers found/defined in �%1�
I  Syntax: MAKEAND scriptfile|directory [/?] [/TIMEFRAME:nnn] [/PACK]

  The mouse pointer files and the timeframe values that are to be used  for
  the animation can be defined in an AniMouse script file.
I
  Alternatively, a directory containing the mouse pointer files for the
  animation can be specified. Then MAKEAND creates an AniMouse
  script file which can be used to define individual timeframe values.
  The name of the directory may be longer than 8 characters on HPFS drives, but
  due to a restriction of the OS/2 resource compiler must not contain spaces.
I
  Refer also to "Animated Mouse Pointer for OS/2" in the folder "Information",
     section "How can I create an AniMouse resource DLL ?"
