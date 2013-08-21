package "curl"

execute "install_rvm" do
  command "su vagrant -c 'curl -L https://get.rvm.io | bash -s stable --ruby'"
  creates "/home/vagrant/.rvm"
end

execute "create_role" do
  command "su postgres -c 'echo \"create role vagrant superuser login createdb;\" | psql'"
end

package "graphviz"
package "imagemagick"
package "libxslt1-dev"
package "libxml2-dev"
package "nodejs"
package "redis-server"

execute "bundle_install" do
  command "su vagrant -l -c 'cd #{node["rails"]["dir"]} && bundle'"
end
