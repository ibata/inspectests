# frozen_string_literal: true
# encoding: utf-8

control 'reach_host' do
  impact 1.0
  title 'This is Testing Endpoint'

  describe http("http://ec2us-glue1-1-arcus.anaplan.com:8080/about", ssl_verify: false) do
    its('status') { should eq 200 }
    its('body') { should cmp %r{<h3>Build data:</h3>} }
  end

end
# #fqdn = sys_info.hostname

