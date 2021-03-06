# frozen_string_literal: true
# encoding: utf-8

control 'reach_host' do
  impact 1.0
  title 'This is Testing Endpoint'
  describe http("http://XXX:8080/about", ssl_verify: false, enable_remote_worker: true) do
    its('status') { should eq 200 }
    its('body') { should cmp %r{<h3>Build data:</h3>} }
  end
  describe http("http://XXX:8080/about", ssl_verify: false, enable_remote_worker: true) do
    its('status') { should eq 200 }
    its('body') { should cmp %r{<h3>Build data:</h3>} }
  end

end
# #fqdn = sys_info.hostname

