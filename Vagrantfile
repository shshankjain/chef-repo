
Vagrant::Config.run do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise32"
  config.vm.forward_port 80, 8080

  config.vm.provision :chef_solo do |chef|
  chef.cookbooks_path = ["cookbooks","custom-cookbooks"]
  chef.data_bags_path = "data_bags"
  chef.log_level = :debug

  # Load chef config from JSON file
  # nodes.json contains rvm configuration
  ## Pinnged the version of RVM to specific version due to https://github.com/fnichol/chef-rvm/issues/159
  ## install the ruby for specific user and not as root
  chef.json = JSON.parse(File.read(File.dirname(__FILE__) + "/nodes.json"))
  
  ### Basic System level config cookbooks
  # chef.add_recipe "apt"
  chef.add_recipe "git"
  chef.add_recipe "build-essential"
  # create users from data_bags/users/*.json
  chef.add_recipe "users::sysadmins"
  
  ### Config needed by Application
  # Install mysql server and client
  chef.add_recipe "application_custom::application_packages"
  chef.add_recipe "mysql::client" # chef.add_recipe "mysql::server"
  chef.add_recipe "rvm::system"
  chef.add_recipe "rvm::gem_package"
  chef.add_recipe "rvm::vagrant"
  chef.add_recipe "nginx::source"
  end
end
