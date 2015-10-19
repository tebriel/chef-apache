#
# Cookbook Name:: apache
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::server' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'Installs httpd' do
      expect(chef_run).to install_package('httpd')
    end
    it 'Sets the index.html' do
      expect(chef_run).to create_file('/var/www/html/index.html')
    end
  end
end
