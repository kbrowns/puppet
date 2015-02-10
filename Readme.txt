start the whole thing off by copying and pasting this into cmd.exe and running it

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/kbrowns/puppet/master/bootstrap.ps1'))"
