require 'spec_helper'

CURRENT_DIRECTORY = File.dirname(File.dirname(__FILE__))

describe 'Dockerfile' do
  include_context 'using alpine'
  include_context 'with a docker image'

  describe file('/usr/bin/caddy') do
    it { should exist }
    it { should be_executable }
  end
end
