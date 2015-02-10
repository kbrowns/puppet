iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

$Env:Path += ";" + $Env.ALLUSERSPROFILE + "\chocolatey\bin"

choco install puppet

choco install git

bootstrap-git-clone.ps1

puppet/bootstrap-puppet.ps1

puppet/apply-site.ps1
