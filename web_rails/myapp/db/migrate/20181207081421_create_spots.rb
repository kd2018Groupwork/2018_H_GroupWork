class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string  :spot_name
      t.integer :product_id
      t.text    :details
      t.text    :review
      t.integer :rate , :default => 0
      t.boolean :review_flag

      t.timestamps
    end
  end
end
