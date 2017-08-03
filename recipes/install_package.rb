#
# Cookbook Name:: monit
# Recipe:: install_package
#

include_recipe "yum-epel" if %w[rhel amazon].include? platform_family # ~FC007 uses `suggests`

package "monit" do
  version node["monit"]["version"] if node["monit"]["version"]
end
