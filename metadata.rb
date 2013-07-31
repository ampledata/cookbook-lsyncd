name             'lsyncd'
maintainer       'Greg Albrecht'
maintainer_email 'gba@gregalbrecht.com'
license          'Apache License 2.0'
description      'Installs/Configures lsyncd.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.1.1'

depends 'supervisor'
supports 'ubuntu', '>= 10.04'
