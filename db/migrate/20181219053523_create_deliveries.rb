class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.string :fee, null: false
      t.string :kind, null: false
      t.string :area, null: false
      t.string :delivery_days, null: false
      t.references :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
