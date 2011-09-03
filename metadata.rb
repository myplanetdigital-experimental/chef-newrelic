maintainer        "Skystack, Limited."
maintainer_email  "support@skystack.com"
license           "Apache 2.0"
description       "Installs and configures New Relic agent"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version           "0.0.1"
recipe            "default", "Default New Relic installer"
recipe            "newrelic::php", "Installs New Relic for PHP. PHP module settings http://support.newrelic.com/kb/php/php-agent-phpini-settings"
recipe            "newrelic::ruby", "Install New Relic for Ruby"
recipe            "newrelic::java", "Install New Relic for Java"
recipe            "newrelic::python", "Install New Relic for Python."

%w{ debian ubuntu centos suse fedora redhat}.each do |os|
  supports os
end

conflicts "php::module_xdebug"

attribute "newrelic/license_key",
  :display_name => "New Relic license key",
  :description => "New Relic Account license key",
  :default => "ENTER_YOUR_LICENSE_KEY"

attribute "newrelic/pidfile",
  :display_name => "Pid file",
  :description => "Pid file location (full path)",
  :default => "/var/run/newrelic-daemon.pid"

attribute "newrelic/logfile",
  :display_name => "Log path",
  :description => "Log file location (full path)",
  :default => "/var/log/newrelic/newrelic-daemon.log"

attribute "newrelic/loglevel",
  :display_name => "Log level",
  :description => "Default loglevel",
  :default => "info"

attribute "newrelic/daemon/collector_host",
  :display_name => "NR Collector hostname",
  :description => "Collectors are loations for agents to send data",
  :default => "collector.newrelic.com"

attribute "newrelic/daemon/ssl",
  :display_name => "SSL",
  :description => "Enables SSL",
  :default => "false"
        
#attribute "newrelic/daemon/ssl_ca_bundle",
#  :display_name => "SSL Certificate Authority",
#  :description => "Path the ca file",
#  :default => ''
        
#attribute "newrelic/daemon/ssl_ca_path",
#  :display_name => "SSL Certificate Authority",
#  :description => "Path the ca file",
#  :default => ''        

attribute "newrelic/daemon/timeout",
  :display_name => "Default timeout",
  :description => "Default timeout",
  :default => "30"
  
attribute "newrelic/daemon/socket",
  :display_name => "Socket Path",
  :description => "Path to the sock file",
  :default => '/tmp/.newrelic.sock'
    
attribute "newrelic/daemon/max_threads",
  :display_name => "Max Threads",
  :description => "Max Threads",
  :default => "8"      
  
attribute "newrelic/daemon/metric_limit",
  :display_name => "Metric Limit",
  :description => "Metric Limit",
  :default => "2000"

attribute "newrelic/daemon/special",
  :display_name => "Special",
  :description => "Special",
  :default => "0"

attribute "newrelic/daemon/proxy",
  :display_name => "Proxy",
  :description => "Proxy Address",
  :default => ''
