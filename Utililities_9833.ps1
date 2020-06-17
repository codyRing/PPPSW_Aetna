#CD C:\Users\crissler\Documents\Source
#import-module .\mdc.psm1 -force
$base = Get-ScriptRoot
$Source_File_Paths = @()
$Source_File_Paths = Import-Csv 'C:\Users\crissler\Documents\Source\Source_File_Paths.csv'|Sort-Object -Property Client
$public = $Source_File_Paths|Where-Object{($_.client -like 'public') -and ($_.directory -like 'public')}|Select-Object -Property Path
$personal = $Source_File_Paths|Where-Object{($_.client -like 'Personal') -and ($_.directory -like 'Personal')}|Select-Object -Property Path

cd $base

Write-Host ($personal.path)


# Destination Dev
Copy-Item -Path ($base+'\9833_Objects') -Destination ($personal.path) -Recurse -Force
#Copy-Item -Path ($base+'\9833_Objects') -Destination ($public.path) -Recurse -Force


# Destination Local
#Copy-Item -Path ($personal.path +'\PPSW_Editor')  -Destination ($base+'\PPSW_Editor')  -Recurse -Force
#Copy-Item -Path ($public.path +'\PPSW_Editor')  -Destination ($base+'\PPSW_Editor') -Recurse -Force