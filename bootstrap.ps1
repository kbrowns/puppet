iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

$Env:Path += ";" + $Env.ALLUSERSPROFILE + "\chocolatey\bin"

choco install puppet
choco install git

git clone https://github.com/kbrowns/puppet.git

puppet/bootstrap-puppet.ps1

puppet/apply-site.ps1
