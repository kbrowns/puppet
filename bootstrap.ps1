iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

$Env:Path += ";" + $Env.ALLUSERSPROFILE + "\chocolatey\bin"

choco install puppet

RefreshEnv

puppet module install --force rismoney/chocolatey

puppet apply site.pp