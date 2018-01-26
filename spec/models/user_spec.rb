require "rails_helper"

RSpec.describe User do
  context "validations" do
  subject { build(:user) }

    it  { is_expected.to validate_presence_of(:username) }
    it  { is_expected.to validate_presence_of(:email) }
    it  { is_expected.to validate_uniqueness_of(:username) }
    it  { is_expected.to validate_presence_of(:email) }
    it  { is_expected.to have_secure_password }
  end
end
