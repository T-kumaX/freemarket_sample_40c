class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.text :image1, null: false
      t.text :image2
      t.text :image3
      t.text :image4
      t.references :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
