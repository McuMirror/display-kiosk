Dim Shell, Shortcut, Fso
Set Shell = CreateObject("WScript.Shell")
Set Fso = CreateObject("Scripting.FileSystemObject")
Set Shortcut = Shell.CreateShortcut(Shell.SpecialFolders("Desktop") & "\Anzeigekiosk.lnk")
Shortcut.TargetPath = "C:\Python27\pythonw.exe"
Shortcut.WorkingDirectory = Fso.GetAbsolutePathName("..")
Shortcut.IconLocation = Fso.GetAbsolutePathName("..\display-kiosk.ico")
Shortcut.Arguments = """" & Fso.GetAbsolutePathName("..\display-kiosk") & """"
Shortcut.Save