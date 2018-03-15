class StickerCollection < ApplicationRecord
  belongs_to :user
  has_many :stickers
  validates :title, :description, :image, presence: true
end
