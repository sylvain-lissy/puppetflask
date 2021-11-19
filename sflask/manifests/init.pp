# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include sflask
class sflask {

	package { 'python':
		ensure => present,
	}


	package { 'python-pip':
		ensure => present,
		require => Package[python],
	}

        include sflask::entrypoint
	include sflask::database
	include sflask::server

	notice ("installation done")
}
