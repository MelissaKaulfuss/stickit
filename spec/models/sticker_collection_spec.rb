require "rails_helper"

RSpec.describe StickerCollection do
  context "assocations" do
    subject { build(:sticker_collection) }
    it { is_expected.to belong_to(:user) }
    it { should have_many(:stickers) }
  end
end