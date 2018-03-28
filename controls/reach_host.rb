control 'reach_host' do
  impact 1.0
  title 'This is Testing Endpoint'
  describe command("curl -sS http://dc5-glue1-1-p2:9090/1/0/customer/customers") do
    its('stderr') { should eq ''}
  end
  describe http("https://ec2us-admin-nurding.anaplan.com/administration/about.html", ssl_verify: false) do
    its('status') { should eq 200 }
    its('body') { should cmp %r{<h1>administration</h1>} }
    its('body') { should cmp %r{<p>Anaplan Administration</p>} }
  end
end
