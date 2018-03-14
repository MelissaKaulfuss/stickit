class CreateStickers < ActiveRecord::Migration[5.1]
  def change
    create_table :stickers do |t|
      t.string :name
      t.text :description
      t.string :url
      t.references :sticker_collection, foreign_key: true

      t.timestamps
    end
  end
end
