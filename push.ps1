param (
    [Parameter(Mandatory=$false)]
    [string]$Message
)

# Se il messaggio non è fornito, chiedilo
if (-not $Message) {
    $Message = Read-Host "Inserisci il messaggio del commit"
}

# Verifica se ci sono modifiche
$status = git status --porcelain
if (-not $status) {
    Write-Host "Nessuna modifica da committare." -ForegroundColor Yellow
    exit
}

Write-Host "Aggiunta file..." -ForegroundColor Cyan
git add .

Write-Host "Esecuzione commit: $Message" -ForegroundColor Cyan
git commit -m "$Message"

Write-Host "Invio modifiche (push)..." -ForegroundColor Cyan
git push

Write-Host "Operazione completata con successo!" -ForegroundColor Green
