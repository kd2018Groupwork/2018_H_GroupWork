class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string :spot_name
      t.integer :product_id
      t.integer :point
      t.text :spot_address
      t.text :details

      t.timestamps
    end
  end
end
