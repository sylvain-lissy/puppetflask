# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include sflask::entrypoint
class sflask::entrypoint {

        exec { 'install flask':
		path => '/usr/bin:/usr/sbin:/bin',
                command => 'pip install flask',
                require => Package[python-pip],
        }

	exec { "locate app.py":
		cwd => '/etc/puppetlabs/code/modules/flask/manifests',
		path => '/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/bin',
		environment => ["FLASK_APP=app.py", "FLASK_ENV=develoment"],
		command => "flask run -h localhost -p 5171",
	}


}
