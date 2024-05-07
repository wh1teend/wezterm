#Other
Clear-Host

#Terminal-Icons
Import-Module Terminal-Icons

#PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

#Functions
function whereis($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

#Prompt
oh-my-posh init pwsh --config 'C:/Users/admin/Documents/PowerShell/wh1teend.omp.json' | Invoke-Expression
