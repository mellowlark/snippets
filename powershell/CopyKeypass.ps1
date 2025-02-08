$date = Get-Date -UFormat "%m.%d.%Y"
$me = 
move C:\Users\${me}\safes\keepassdb.kdbx C:\Users\${me}\safes\backups\${date}.keepassdb.kdbx
scp eden:/Users/${me}/.safes/keepassdb.kdbx C:\Users\${me}\safes
