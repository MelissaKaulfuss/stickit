class StickerCollection < ApplicationRecord
  belongs_to :user
  has_many :stickers
end
