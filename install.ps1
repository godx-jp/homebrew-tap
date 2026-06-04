$ErrorActionPreference = 'Stop'
$arch = if ($env:PROCESSOR_ARCHITECTURE -eq 'ARM64') { 'arm64' } else { 'amd64' }
$dir  = "$env:LOCALAPPDATA\tun"
New-Item -ItemType Directory -Force -Path $dir | Out-Null
$url  = "https://github.com/godx-jp/homebrew-tap/releases/latest/download/tun_windows_$arch.exe"
Write-Host "Downloading tun ($arch)..."
Invoke-WebRequest -Uri $url -OutFile "$dir\tun.exe"
$p = [Environment]::GetEnvironmentVariable('Path','User')
if ($p -notlike "*$dir*") { [Environment]::SetEnvironmentVariable('Path', "$p;$dir", 'User') }
Write-Host "Installed to $dir. Open a NEW terminal, then: tun version"
