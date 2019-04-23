#This Command requires 7zip.
function ZipFolderfunc{
	dir -directory | ForEach-Object { 
		& "C:\Program Files\7-Zip\7z.exe" a -tzip -mx1 -mmt1 ($_.Name+".zip") $_.Name 
	}
}


New-Alias ZipFolder ZipFolderfunc
