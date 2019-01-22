class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.integer :spot_id
      t.text  :address
      t.string :shop_name
      t.text :detail
      t.string :images

      t.timestamps
    end
  end
end
