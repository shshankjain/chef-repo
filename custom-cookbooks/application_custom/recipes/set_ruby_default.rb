
execute "set system default ruby" do
 command "rvm use --default ruby-1.9.3-p374"
 action :run
end