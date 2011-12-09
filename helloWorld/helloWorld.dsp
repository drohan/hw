# Microsoft Developer Studio Project File - Name="helloWorld" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=helloWorld - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "helloWorld.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "helloWorld.mak" CFG="helloWorld - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "helloWorld - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "helloWorld - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "helloWorld - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386

!ELSEIF  "$(CFG)" == "helloWorld - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "helloWorld - Win32 Release"
# Name "helloWorld - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\Src\main.cpp

!IF  "$(CFG)" == "helloWorld - Win32 Release"

!ELSEIF  "$(CFG)" == "helloWorld - Win32 Debug"

# ADD CPP /MDd

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# Begin Group "Persistent Classes"

# PROP Default_Filter ""
# Begin Group "Source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\HelloObject.cpp
# End Source File
# End Group
# Begin Group "DDL Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\ddlFiles\HelloObject.ddl

!IF  "$(CFG)" == "helloWorld - Win32 Release"

USERDEP__HELLO="..\..\data\helloWorld\helloWorld.boot"	
# Begin Custom Build - Building DDL File $(InputPath)
InputDir=.\ddlFiles
ProjDir=.
InputPath=.\ddlFiles\HelloObject.ddl
InputName=HelloObject

BuildCmds= \
	cd $(InputDir) \
	ooddlx "$(InputName)".ddl ..\..\..\data\helloWorld\helloWorld.boot \
	cd $(ProjDir) \
	

"$(InputDir)\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(InputDir)\$(InputName)_ddl.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(InputDir)\$(InputName)_ref.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "helloWorld - Win32 Debug"

USERDEP__HELLO="..\..\data\helloWorld\helloWorld.boot"	
# Begin Custom Build - Building DDL File $(InputPath)
InputDir=.\ddlFiles
ProjDir=.
InputPath=.\ddlFiles\HelloObject.ddl
InputName=HelloObject

BuildCmds= \
	cd $(InputDir) \
	ooddlx "$(InputName)".ddl ..\..\..\data\helloWorld\helloWorld.boot \
	cd $(ProjDir) \
	

"$(InputDir)\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(InputDir)\$(InputName)_ddl.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(InputDir)\$(InputName)_ref.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "DDL Generated"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\ddlFiles\HelloObject.h
# End Source File
# Begin Source File

SOURCE=.\ddlFiles\HelloObject_ddl.cpp
# End Source File
# Begin Source File

SOURCE=.\ddlFiles\HelloObject_ref.h
# End Source File
# End Group
# End Group
# Begin Group "Objy Federated Database"

# PROP Default_Filter ""
# Begin Source File

SOURCE="..\..\data\helloWorld\helloWorld.boot"

!IF  "$(CFG)" == "helloWorld - Win32 Release"

# Begin Custom Build - Creating Objectivity Federation $(InputPath)
InputDir=\TEMP\Samples\data\helloWorld
InputPath="..\..\data\helloWorld\helloWorld.boot"
InputName=helloWorld

BuildCmds= \
	if exist "$(InputPath)" oocleanup -local "$(InputPath)" \
	if exist "$(InputPath)" oodeletefd -f "$(InputPath)" \
	del $(InputDir)\*.DB \
	oonewfd -fdfilepath "$(InputDir)"\$(InputName).fdb -lockserverhost $(COMPUTERNAME) -fdnumber 11 "$(InputPath)" \
	

"$(InputDir)\$(InputName).fdb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(InputPath)" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "helloWorld - Win32 Debug"

# Begin Custom Build - Creating Objectivity Federation $(InputPath)
InputDir=\TEMP\Samples\data\helloWorld
InputPath="..\..\data\helloWorld\helloWorld.boot"
InputName=helloWorld

BuildCmds= \
	if exist "$(InputPath)" oocleanup -local "$(InputPath)" \
	if exist "$(InputPath)" oodeletefd -f "$(InputPath)" \
	del $(InputDir)\*.DB \
	oonewfd -fdfilepath "$(InputDir)\$(InputName).fdb" -lockserverhost $(COMPUTERNAME) -fdnumber 11 "$(InputPath)" \
	

"$(InputDir)\$(InputName).fdb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(InputPath)" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# End Group
# End Target
# End Project
