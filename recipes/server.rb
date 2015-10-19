package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content <<-EOH
    <HTML>
    <BODY>
      <H1>Hello, world!</H1>
    </BODY>
    </HTML>
  EOH
end
