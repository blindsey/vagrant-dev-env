Vagrant::Config.run do |config|
  config.vm.box = 'precise64'
  config.vm.host_name = 'orbital'
  config.vm.forward_port 3000, 3000
  config.vm.share_folder "groupx", "/home/vagrant/groupx", "~/Projects/groupx"
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.json = {
      "postgresql" => {
        "config" => { "ssl" => false },
        "enable_pgdg_apt" => true,
        "version" => "9.2",
        "password" => { "postgres" => "" },
        "pg_hba" => [
          {:type => 'local', :db => 'all', :user => 'postgres', :addr => nil, :method => 'ident'},
          {:type => 'local', :db => 'all', :user => 'all', :addr => nil, :method => 'ident'},
          {:type => 'host', :db => 'all', :user => 'all', :addr => '127.0.0.1/32', :method => 'trust'},
          {:type => 'host', :db => 'all', :user => 'all', :addr => '::1/128', :method => 'trust'}
        ]
      },
      "rails" => {
        "dir" => "/home/vagrant/groupx"
      }
    }
    chef.add_recipe "apt"
    chef.add_recipe "openssl"
    chef.add_recipe "postgresql"
    chef.add_recipe "postgresql::contrib"
    chef.add_recipe "rails"
  end
end
