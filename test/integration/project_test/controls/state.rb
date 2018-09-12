terraform_state = attribute(
  "terraform_state",
  description: "state output",
).chomp


control "terraform_state" do
  desc "Verifies that the Terraform state file can be used in InSpec controls"
  describe json(terraform_state).terraform_version do
    it { should match /\d+\.\d+\.\d+/ }
  end
end
