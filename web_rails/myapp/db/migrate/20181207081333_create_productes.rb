class CreateProductes < ActiveRecord::Migration[5.1]
  def change
    create_table :productes do |t|
      t.string :product_name

      t.timestamps
    end
  end
end
