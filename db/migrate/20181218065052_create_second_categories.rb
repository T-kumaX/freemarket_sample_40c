class CreateSecondCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :second_categories do |t|
      t.string :name, null: false
      t.references :first_category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
