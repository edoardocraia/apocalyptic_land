# Percorso base (cartella dove è lo script)
$progettoPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$zipPath = Join-Path $progettoPath "HeavyAssets_Part1.zip"
$listaFile = Join-Path $progettoPath "large_uasset_over_100MB.txt"
$tempExtractPath = Join-Path $progettoPath "__estrazione_temp__"

# Verifica esistenza zip e lista
if (!(Test-Path $zipPath)) {
    Write-Host "❌ File ZIP non trovato: $zipPath"
    exit 1
}
if (!(Test-Path $listaFile)) {
    Write-Host "❌ File lista non trovato: $listaFile"
    exit 1
}

# Estrai temporaneamente lo zip
Write-Host "`n📦 Estrazione zip temporanea in: $tempExtractPath`n"
Expand-Archive -Path $zipPath -DestinationPath $tempExtractPath -Force

# Per ogni riga nella lista (percorsi relativi)
Get-Content $listaFile | ForEach-Object {
    $relPath = $_.Trim()
    if ($relPath -eq "") { return }

    $source = Join-Path $tempExtractPath $relPath
    $dest = Join-Path $progettoPath $relPath
    $destDir = Split-Path $dest -Parent

    if (!(Test-Path $source)) {
        Write-Host "⚠️ Mancante nel zip: $relPath"
    } else {
        if (!(Test-Path $destDir)) {
            New-Item -ItemType Directory -Path $destDir -Force | Out-Null
        }
        Copy-Item -Path $source -Destination $dest -Force
        Write-Host "✅ Copiato: $relPath"
    }
}

# Cleanup cartella temporanea
Remove-Item $tempExtractPath -Recurse -Force
Write-Host "`n✅ Completato. Tutti i file sono stati estratti e posizionati."
