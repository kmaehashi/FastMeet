Set objShell = WScript.CreateObject("WScript.Shell")
currentDir = objShell.CurrentDirectory
systemDir = currentDir + "\System"


CreateShortcut systemDir + "\_window_log.lnk", systemDir + "\log.cmd"
CreateShortcut systemDir + "\_window_post.lnk", systemDir + "\post.cmd"

MsgBox "Setup Complete!"

Sub CreateShortcut(Shortcut, Target)
	Set objShortCut = objShell.CreateShortcut(Shortcut)
	objShortCut.TargetPath = Target
	objShortCut.Save
End Sub
