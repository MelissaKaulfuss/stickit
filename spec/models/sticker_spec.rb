require "rails_helper"

RSpec.describe Sticker do
  context "assocations" do
    subject { build(:sticker) }
    it { is_expected.to belong_to(:sticker_collection) }
  end
end
