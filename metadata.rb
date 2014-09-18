name             'vimana-jenkins'
maintainer       'System Insights'
maintainer_email 'emiliano@systeminsighs.com'
license          'All rights reserved'
description      'Installs/Configures nodes_vb'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


depends 'apt'
depends 'build-essential'
depends 'java'
depends 'jenkins'

