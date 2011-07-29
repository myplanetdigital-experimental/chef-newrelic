#
# Cookbook Name:: newrelic
# Attributes:: default
#
# Copyright 2011, Myplanet Digital
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
 
default[:newrelic][:php]['newrelic.enabled']                                  = 1
default[:newrelic][:php]['newrelic.appname']                                  = 'PHP Application'
default[:newrelic][:php]['newrelic.transaction_tracer.enable']                = 1
default[:newrelic][:php]['newrelic.transaction_tracer.threshold']             = 'adpex_f'
default[:newrelic][:php]['newrelic.transaction_tracer.top100']                = 0
default[:newrelic][:php]['newrelic.transaction_tracer.record_sql']            = 'obfuscated'
default[:newrelic][:php]['newrelic.transaction_tracer.stack_trace_theshold']  = 500
default[:newrelic][:php]['newrelic.transaction_tracer.custom']                = ''
default[:newrelic][:php]['newrelic.logfile']                                  = ''
default[:newrelic][:php]['newrelic.loglevel']                                 = 'warning'
default[:newrelic][:php]['newrelic.enable_params']                            = 0
default[:newrelic][:php]['newrelic.error_collector.enable']                   = 1
default[:newrelic][:php]['newrelic.error_collector.record_database_errors']   = 0
default[:newrelic][:php]['newrelic.webtransaction.name.function']             = ''
default[:newrelic][:php]['newrelic.webtransaction.name.files']                = ''
default[:newrelic][:php]['newrelic.webtransaction.name.remove_trailing_path'] = 0
default[:newrelic][:php]['newrelic.framework']                                = ''
default[:newrelic][:php]['newrelic.browser_monitoring.auto_instrument']       = 1
default[:newrelic][:php]['newrelic.timeout']                                  = 10
default[:newrelic][:php]['newrelic.nonblocking']                              = 1
default[:newrelic][:php]['newrelic.daemon']                                   = '/tmp/.newrelic.sock'

# NEWRELIC.CFG SETTINGS
# http://support.newrelic.com/kb/php/proxy-daemon-newreliccfg-settings
default[:newrelic][:license_key]             = 'ENTER_YOUR_LICENSE_KEY'
default[:newrelic][:pidfile]                 = '/var/run/newrelic-daemon.pid'
default[:newrelic][:logfile]                 = '/var/log/newrelic/newrelic-daemon.log'
default[:newrelic][:loglevel]                = 'info'

default[:newrelic][:daemon][:collector_host] = 'collector.newrelic.com'
default[:newrelic][:daemon][:ssl]            = false
default[:newrelic][:daemon][:ssl_ca_bundle]  = ''
default[:newrelic][:daemon][:ssl_ca_path]    = ''
default[:newrelic][:daemon][:timeout]        = 30
default[:newrelic][:daemon][:socket]         = '/tmp/.newrelic.sock'
default[:newrelic][:daemon][:max_threads]    = 8
default[:newrelic][:daemon][:metric_limit]   = 2000
default[:newrelic][:daemon][:special]        = 0
default[:newrelic][:daemon][:proxy]          = ''
