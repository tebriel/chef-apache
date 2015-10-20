package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content <<-EOH
    <HTML>
    <BODY>
      <H1>Hello, world!</H1>
      <H3>My IP Address is: #{node['ipaddress']}</H3>
      <H3>My Hotname is: #{node['hostname']}</H3>
    </BODY>
    </HTML>
  EOH
end
