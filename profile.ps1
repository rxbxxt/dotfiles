Set-PSReadLineOption -EditMode Emacs

$colors = @{}
$colors['Command'] = [System.ConsoleColor]::Magenta
Set-PSReadLineOption -Colors $colors

Set-Location D:\fun\

# Install nerd font
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\multiverse-neon.omp.json" | Invoke-Expression

# Install-Module -Name Terminal-Icons -Repository PSGallery
Import-Module -Name Terminal-Icons


# Aliases
Set-Alias vi nvim

function fun {
  Set-Location D:\fun\
}

function vicnf {
  vi $ENV:USERPROFILE\AppData\Local\nvim\init.vim
}

function pscnf {
  vi $PROFILE
}
