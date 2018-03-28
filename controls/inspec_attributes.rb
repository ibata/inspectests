# frozen_string_literal: true

static_terraform_output =
  # The Terraform configuration under test must define the equivalently named
  # output
  attribute(
    "static_terraform_output",
    description: "An arbitrary, static output"
  )

control "inspec_attributes" do
  desc "A demonstration of how InSpec attributes are mapped to Terraform outputs"

  describe "The 'static_terraform_output' attribute" do
    subject do
      static_terraform_output
    end

    it "is mapped to the 'static_terraform_output' output by default" do
      is_expected.to eq "static terraform output"
    end
  end
end
