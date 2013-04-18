Based on https://github.com/opscode/chef-repo

How to Use:
===========
* Clone the repo locally
* Make sure Vagrant and Virtual Box are up and running
* Making sure librarian-chef is installed.
* Goto code directory and run librarian-chef install to download the cookbooks (by default cookbooks have been checked in, so this step can be skipped)
* Run vagrant up / reload to let vagrant / chef do there magic
* Login using ssh and setup the codebase and nginx config in /etc/nginx/sites-available/folder
* nxensite the new site.
* reload nginx