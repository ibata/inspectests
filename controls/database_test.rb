control "database_test" do
  desc "Test Database"

  describe file('/root/.my.cnf') do
    it { should exist }
    its ('mode') { should cmp '0600' }
  end
end
