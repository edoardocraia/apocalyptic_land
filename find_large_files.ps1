# find_large_files.ps1
$sizeLimitMB = 100
$sizeLimitBytes = $sizeLimitMB * 1MB

$files = Get-ChildItem -Recurse -File | Where-Object { $_.Length -gt $sizeLimitBytes }

$files | Select-Object @{Name="Path";Expression={$_.FullName.Substring($PWD.Path.Length + 1)}}, @{Name="SizeMB";Expression={"{0:N2}" -f ($_.Length / 1MB)}} |
    Format-Table -AutoSize

$files | Select-Object FullName | ForEach-Object {
    $_.FullName.Substring($PWD.Path.Length + 1)
} | Out-File -Encoding UTF8 large_files_list.txt

Write-Host "`nLista file > $sizeLimitMB MB salvata in large_files_list.txt"
