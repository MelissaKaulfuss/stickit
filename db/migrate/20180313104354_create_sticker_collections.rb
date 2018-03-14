class CreateStickerCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :sticker_collections do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
