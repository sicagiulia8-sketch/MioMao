param (
    [Parameter(Mandatory=$false)]
    [string]$BranchName
)

# Se il nome del branch non è fornito, chiedilo
if (-not $BranchName) {
    $BranchName = Read-Host "Inserisci il nome del nuovo branch"
}

# Rimuovi eventuali spazi (sostituiscili con trattini)
$BranchName = $BranchName -replace " ", "-"

Write-Host "Creazione del branch: $BranchName..." -ForegroundColor Cyan
git checkout -b $BranchName

Write-Host "Pubblicazione del branch sul server (origin)..." -ForegroundColor Cyan
git push -u origin $BranchName

Write-Host "Branch '$BranchName' creato e attivato!" -ForegroundColor Green
