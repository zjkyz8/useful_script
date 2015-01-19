Get-ChildItem -include *.cs -recurse  | ForEach-Object {
    ## If contains UNIX line endings, replace with Windows line endings
    if (Get-Content $_.FullName -Delimiter "`0" | Select-String "[^`r]`n")
    {
    	write-host $_
    }
}