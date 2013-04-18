packages = value_for_platform( ["redhat", "centos", "scientific", "amazon", "oracle"] => {
                                 "default" => %w(redis-server)},
                               ["ubuntu", "debian"] => {
                                 "default" => %w(redis-server) } )

packages.each do |devpkg|
  package devpkg
end
