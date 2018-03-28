control 'reach_host' do
  impact 1.0
  title 'This is Testing Endpoint'
  describe command("curl -sS http://dc5-glue1-1-p2:9090/1/0/customer/customers") do
    its('stdout') { should_not match /HTTP Status 404/i }
    its('stderr') { should eq ''}
  end
end
