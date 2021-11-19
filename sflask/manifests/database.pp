# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include sflask::database
class sflask::database {


	package { 'postgresql':
		ensure => present,
	}

	service { 'postgresql':
		ensure => running,
		require => Package[postgresql],
	}


}
