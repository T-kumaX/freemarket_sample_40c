class CreateFirstCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :first_categories do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
