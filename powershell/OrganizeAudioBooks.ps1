# OrganizeAudioBooks
<#
  Organizes AudioBoooks that have been previously converted from mp3 to m4a with iTunes
  They are always stored in a 2 level folder structure:
    ..\Author\Book Title.
  After conversion both types are stored in the same directory.
  This script renames the m4a files to m4b (b to use the audio book app on iPhone)
  Then it copies the mp3s to one directory and the m4bs to another so they can be
  re-added to iTunes as audiobooks.

  ## Possible Enhancements:
    > Clean up the folder names that iTunes creates. 
      Currently that needs to be done manually.
    > Clean up file names
    > Convert mp3 to m4b via a script.
      Not sure that is even possible
    > Add arguments.
      Currently the directory structure has to match the script or vice versa.
  #>

$path = (Get-ChildItem -Path .\new -Recurse -Directory -Name -Depth 1)
$y = $path.length/2

for ($i = $y; $i -le ($path.length - 1); $i += 1) {
$p = $path[$i]
mkdir .\mp3\$p
mkdir .\m4b\$p
Get-ChildItem *.m4a -Path .\new\$p | Rename-Item -NewName { $_.name -Replace '\.m4a','.m4b' }
Move-Item -Path .\new\$p\*.m4b  -Destination .\m4b\$p
Move-Item -Path .\new\$p\*.mp3  -Destination .\mp3\$p
} 
