
# Set the directory path where the .rar files are located
$directoryPath = "D:\Downloads\_TV"

# Get a list of all .rar files in the directory and its subdirectories
$rarFiles = Get-ChildItem -Path $directoryPath -Include *.rar -Recurse

# Loop through each .rar file and decompress it using WinRAR
foreach ($rarFile in $rarFiles) {
    # Get the path of the folder where the .rar file is located
    $folderPath = Split-Path -Path $rarFile.FullName -Parent
    
    # Extract the .rar file to the same folder
    & "C:\Program Files\WinRAR\WinRAR.exe" x "$($rarFile.FullName)" "$($folderPath)"      
}
