node 'default' { 
	package { "git" : 
		ensure => "latest", 
		provider => 'chocolatey'
	}
	package { "notepad2" : 
		ensure => "latest", 
		provider => 'chocolatey'
	}
}