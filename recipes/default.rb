#
# Cookbook Name:: newrelic
# Recipe:: default
#
# Copyright 2011, Skystack Limited
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

require_recipe "apt"

node[":newrelic"].each do |nr|
  #node[:newrelic][:license_key]
  node[:newrelic][:license_key] = nr["license_key"]
end

apt_repository "newrelic" do
  uri "http://apt.newrelic.com/debian"
  components ["newrelic", "non-free"]
  action :add
end

template "/etc/newrelic/newrelic.cfg" do
  source "newrelic.cfg.erb"
  variables({
    license_key => node[:newrelic][:license_key]
    loglevel => node[:newrelic][:loglevel]
    logfile => node[:newrelic][:logfile]
    pifdile => node[:newrelic][:pidfile]  
  })
end