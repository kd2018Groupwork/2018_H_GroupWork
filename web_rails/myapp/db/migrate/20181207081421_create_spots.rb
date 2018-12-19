class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string  :spot_name
#      t.integer :product_id
      t.text    :details
      t.integer :rate , :default => 0

      t.timestamps
    end
  end
end
