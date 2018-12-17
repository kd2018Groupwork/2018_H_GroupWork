class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string  :spot_name
      t.integer :product_id
      t.integer :evalution
      t.integer :user_id
      t.text    :details
      t.text    :image_path

      t.timestamps
    end
  end
end
