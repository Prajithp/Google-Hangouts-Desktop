!include "MUI2.nsh"

Name "Hangouts"
BrandingText "pierrejacquier.com"

# set the icon
!define MUI_ICON "icon.ico"

# define the resulting installer's name:
OutFile "..\dist\HangoutsSetup.exe"

# set the installation directory
InstallDir "$PROGRAMFILES\Hangouts for Desktop\"

# app dialogs
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_INSTFILES

!define MUI_FINISHPAGE_RUN_TEXT "Start Hangouts"
!define MUI_FINISHPAGE_RUN $INSTDIR\Hangouts.exe

!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_LANGUAGE "English"

# default section start
Section

  # delete the installed files
  RMDir /r $INSTDIR

  # define the path to which the installer should install
  SetOutPath $INSTDIR

  # specify the files to go in the output path
  File /r ..\build\Hangouts\win32\*

  # create the uninstaller
  WriteUninstaller "$INSTDIR\Uninstall Hangouts for Desktop.exe"

  # create shortcuts in the start menu and on the desktop
  CreateShortCut "$SMPROGRAMS\Hangouts.lnk" "$INSTDIR\Hangouts.exe"
  CreateShortCut "$SMPROGRAMS\Uninstall Hangouts for Desktop.lnk" "$INSTDIR\Uninstall Hangouts for Desktop.exe"
  CreateShortCut "$DESKTOP\Hangouts.lnk" "$INSTDIR\Hangouts.exe"

SectionEnd

# create a section to define what the uninstaller does
Section "Uninstall"

  # delete the installed files
  RMDir /r $INSTDIR

  # delete the shortcuts
  Delete "$SMPROGRAMS\Hangouts.lnk"
  Delete "$SMPROGRAMS\Uninstall Hangouts for Desktop.lnk"
  Delete "$DESKTOP\Hangouts.lnk"

SectionEnd
