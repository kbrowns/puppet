iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

$env:path += ";" + $Env.ALLUSERSPROFILE + "\chocolatey\bin"

choco install puppet

choco install git

$env:path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

If (test-path 'puppet'){
	remove-item 'puppet' -Force -Recurse
}

git clone https://github.com/kbrowns/puppet.git

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

puppet module install --force rismoney/chocolatey

puppet apply puppet/site.pp
