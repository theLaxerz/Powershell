#Uninstall Recap and Infraworks 2022
#Autodesk recap
Start-Process msiexec.exe -Argument "/x {8914C5E8-0000-1033-0102-2811A9D26E28} /qn" -Wait
#Autodesk infraworks
Start-Process msiexec.exe -Argument "/x {58E36D07-C001-0000-0102-C854F44898ED} /qn" -Wait
#infraworks content
Start-Process msiexec.exe -Argument "/x {58E36D07-C001-0000-2102-C854F44898ED} /qn"
