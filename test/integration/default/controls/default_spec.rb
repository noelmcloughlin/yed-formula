# frozen_string_literal: true

title 'yed archives profile'

control 'yed binary archive' do
  impact 1.0
  title 'should be installed'

  describe file('/usr/local/yed-proxy-3.19.1.1/yed.jar') do
    it { should exist }
  end
  describe file('/usr/local/bin/yed.sh') do
    it { should exist }
  end
end
