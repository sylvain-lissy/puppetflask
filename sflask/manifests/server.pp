# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include sflask::server
class sflask::server {

	package { 'gunicorn':
		ensure => present,
	}

}
