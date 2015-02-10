iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

$Env:Path += ";" + $Env.ALLUSERSPROFILE + "\chocolatey\bin"

choco install puppet

choco install git

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

If (Test-Path 'puppet'){
	Remove-Item 'puppet' -Force -Recurse
}

git clone https://github.com/kbrowns/puppet.git

puppet/bootstrap-puppet.ps1
