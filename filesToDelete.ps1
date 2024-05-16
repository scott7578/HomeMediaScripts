# Set the directory path where the .rar files are located
$directoryPath = "D:\Downloads\"

# Delete any files that are not needed
$filesToDelete = Get-ChildItem -Path $directoryPath -Include *.txt, *.log, *.nfo, *.sfv, *.rar, *.r?? -Recurse
foreach ($file in $filesToDelete) {
    Remove-Item $file.FullName
}
