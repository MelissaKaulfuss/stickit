require "spec_helper"
require "rails_helper"

describe "User" do
 context "validations" do
    subject { build(:user) }

    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:email) }
  end
end 
