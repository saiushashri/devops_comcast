cookbook_file "/etc/httpd/conf" do
	source "httpd.conf"
	mode "0644"
end

service "apache2" do 
	action [:stop , :start]
end