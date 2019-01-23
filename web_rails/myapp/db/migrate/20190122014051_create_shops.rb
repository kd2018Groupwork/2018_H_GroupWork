class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.integer :spot_id
      t.string  :postcode1
      t.string  :postcode2
      t.text  :address
      t.string :shop_name
      t.text :detail
      t.json :images

      t.timestamps
    end
  end
end
