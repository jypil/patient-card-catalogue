$ar_databases = ['activerecord_unittest', 'activerecord_unittest2']
$as_vagrant   = 'sudo -u vagrant -H bash -l -c'
$home         = '/home/vagrant'

Exec {
  path => ['/usr/sbin', '/usr/bin', '/sbin', '/bin'],
  timeout => 0
}

# --- Preinstall Stage ---------------------------------------------------------

stage { 'preinstall':
  before => Stage['main']
}

class apt_get_update {
  exec { 'apt-get -y update':
    unless => "test -e ${home}/.rvm"
  }
}
class { 'apt_get_update':
  stage => preinstall
}

# --- SQLite -------------------------------------------------------------------

package { ['sqlite3', 'libsqlite3-dev']:
  ensure => installed;
}

# --- Packages -----------------------------------------------------------------

package { ['curl','libcurl3','libcurl3-gnutls','libcurl4-openssl-dev']:
  ensure => installed
}

package { 'build-essential':
  ensure => installed
}

package { 'git-core':
  ensure => installed
}

package { ['libyaml-dev', 'libxml2', 'libxml2-dev', 'libxslt1-dev']:
  ensure => installed
}

package { 'nodejs':
  ensure => installed
}

package { 'nginx':
  ensure => installed
}

# --- Ruby ---------------------------------------------------------------------

exec { 'install_rvm':
  command => "${as_vagrant} 'curl -sSL https://get.rvm.io | bash'",
  creates => "${home}/.rvm",
  timeout => 0,
  require => Package['curl']
}

exec { 'install_ruby':
  command => "${as_vagrant} '${home}/.rvm/bin/rvm install 2.3.0 --autolibs=enabled'",
  creates => "${home}/.rvm/bin/ruby",
  timeout => 0,
  require => [ Package['libyaml-dev'], Exec['install_rvm'] ]
}

exec { 'set_default_ruby': 
  command => "${as_vagrant} '${home}/.rvm/bin/rvm --fuzzy alias create default 2.3.0@patient-card-catalogue && ${home}/.rvm/bin/rvm use default'",
  require => Exec['install_ruby']
}

exec { 'install_bundler':
  command => "${as_vagrant} 'gem install bundler --no-rdoc --no-ri'",
  creates => "${home}/.rvm/bin/bundle",
  timeout => 0,
  require => Exec['set_default_ruby']
}
