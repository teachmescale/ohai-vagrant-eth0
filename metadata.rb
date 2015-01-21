name             "ohai-vagrant-eth0"
maintainer       "Tim Brown"
maintainer_email "tpbrown@gmail.com"
license          "Apache 2.0"
description      "Ohai plugin that detects Vagrant"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.1"

recipe "ohai-vagrant-eth0::default", "Installs the Vagrant ohai plugin"

attribute "ohai/plugin_path",
  :display_name => "Ohai Plugin Path",
  :description => "Distribute plugins to this path.",
  :type => "string",
  :required => "optional",
  :default => "/etc/chef/ohai_plugins"

attribute "ohai/plugins",
  :display_name => "Ohai Plugin Sources",
  :description => "Read plugins from these cookbooks and paths",
  :type => "hash",
  :required => "optional",
  :default => {'ohai' => 'plugins'}
