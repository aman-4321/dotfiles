#Aliases
Set-Alias n nvim
Set-Alias g git
Set-Alias lg lazygit
Set-Alias pn pnpm
Set-Alias c clear
Set-Alias vi vim

function gs { git status }
Set-Alias -Name gs -Value gs

function ga { git add $args }
Set-Alias -Name ga -Value ga

function gr { git remote -v }
Set-Alias -Name gr -Value gr

function gb { git branch $args }
Set-Alias -Name gb -Value gb

function nrd { npm run dev }
Set-Alias -Name nrd -Value nrd


function Git-Status { git status $args }
Set-Alias -Name gs -Value Git-Status

function Git-Add { git add $args }
Set-Alias -Name ga -Value Git-Add

function Git-Remote { git remote -v $args }
Set-Alias -Name gr -Value Git-Remote

#yazi
Set-Alias yy yazi

function yy {
  $tmp = [System.IO.Path]::GetTempFileName()
    yazi $args --cwd-file="$tmp"
    $cwd = Get-Content -Path $tmp
    if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
      Set-Location -LiteralPath $cwd
    }
  Remove-Item -Path $tmp
}
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\robbyrussell.omp.json" | Invoke-Expression
Import-Module -Name Terminal-Icons

Import-Module PSFzf
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'

Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Default-Editor
$env:EDITOR="nvim"
$env:VISUAL="nvim"
$env:YAZI_EDITOR="nvim" # defult editor for yazi


#Winget tab completetion
Register-ArgumentCompleter -Native -CommandName winget -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
        [Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
        $Local:word = $wordToComplete.Replace('"', '""')
        $Local:ast = $commandAst.ToString().Replace('"', '""')
        winget complete --word="$Local:word" --commandline "$Local:ast" --position $cursorPosition | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}

#34de4b3d-13a8-4540-b76d-b9e8d3851756 PowerToys CommandNotFound module

# Starship
Invoke-Expression (&starship init powershell)
$env:STARSHIP_CONFIG = "C:\Users\amanc\.config\starship\starship.toml"
