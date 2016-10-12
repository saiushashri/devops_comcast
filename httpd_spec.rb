require 'spec_helper'

describe 'webserver_test::default' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'stops the httpd service' do
      expect(chef_run).to stop_service 'httpd'
    end

    it 'starts the httpd service' do
      expect(chef_run).to start_service 'httpd'
    end
     it 'enables the httpd service' do
      expect(chef_run).to enable_service 'httpd'
    end
  end