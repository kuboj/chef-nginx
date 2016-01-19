#
# Cookbook Name:: nginx
# Recipe:: default
#

#repo = node["nginx"]["repository_sources"].fetch(node["nginx"]["repository"])

apt_repository "nginx" do
  uri node["nginx"]["repository_sources"].fetch(node["nginx"]["repository"])["uri"]
  distribution repo["distribution"]
  components repo["components"]
  key node["nginx"]["repository_sources"].fetch(node["nginx"]["repository"])["key"]
  keyserver node["nginx"]["repository_sources"].fetch(node["nginx"]["repository"])["keyserver"] if node["nginx"]["repository_sources"].fetch(node["nginx"]["repository"])["keyserver"]
  deb_src node["nginx"]["repository_sources"].fetch(node["nginx"]["repository"])["deb_src"]
  action :add
end
