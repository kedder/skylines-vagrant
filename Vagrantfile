Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.share_folder "skylines", "/skylines", "../skylines"

  config.vm.forward_port 8080, 8080
  # config.vm.forward_port 6379, 6379  # redis
  config.vm.forward_port 5432, 5432  # postgres

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks", "cookbooks-site"]

    chef.add_recipe "skylines"

    chef.json = {
        postgresql: {
            password: {
                postgres: "postgres"
            },
            max_connections: 10,
            listen_addresses: "*",
            pg_hba: [
              { type: "host",  db: "all", user: "vagrant", addr: "0.0.0.0/0", method: "trust" }
            ]
        },
        skylines: {
            username: "vagrant"
        },
    }

  end
end
