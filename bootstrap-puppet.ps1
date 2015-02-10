puppet module install --force rismoney/chocolatey

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

puppet apply site.pp