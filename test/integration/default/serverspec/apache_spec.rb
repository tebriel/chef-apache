require 'spec_helper'

describe 'apache::server' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('httpd') do
    it { should be_installed }
  end

  describe service('httpd') do
    it { should be_enabled }
    it { should be_running }
  end

  describe file('/var/www/html/index.html') do
    its(:content) { should match /Hello, world!/ }
  end
end
