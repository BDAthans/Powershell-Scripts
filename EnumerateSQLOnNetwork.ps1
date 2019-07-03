#Enumerates all SQL instances running on network

$username = $env:USERNAME
$outfile = "C:\Users\$username\Desktop\EnumSQL.log"

clear
Write-Output("`nEnumeratoring SQL instances running on the network... `n")

[System.Data.Sql.SqlDataSourceEnumerator]::Instance.GetDataSources()
Write-Output("`nWriting Output to File:", $outfile)
[System.Data.Sql.SqlDataSourceEnumerator]::Instance.GetDataSources() | Out-File -FilePath $outfile

Write-Output("`n")
pause
