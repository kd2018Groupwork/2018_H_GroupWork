class AddColumnsToSpots < ActiveRecord::Migration[5.1]
  def change
    add_column :spots, :postcode1, :integer
    add_column :spots, :postcode2, :integer
    add_column :spots, :prefecture_code, :integer
    add_column :spots, :address_city, :string
    add_column :spots, :address_street, :string
    add_column :spots, :address_building, :string
  end
end
