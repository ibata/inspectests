# frozen_string_literal: true

control "file_check" do
  describe file('.kitchen/kitchen-terraform/kt-suite-terraform/foobar') do
    it { should exist }
  end
end
