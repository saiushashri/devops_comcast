execute "apt-get update" do
	command "apt-get update"
end

package "apache2" do
	action :install
end

service "apache2" do
	action [:start, :enable]
end

cookbook_file "/var/www/html/index.html"
	content '<html>
  <head>
<title>Hello World</title>
</head>
<body>
<h1>Hello World!</h1>
</body>
</html>'
end