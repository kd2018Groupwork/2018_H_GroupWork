class AddImagesToSpots < ActiveRecord::Migration[5.1]
  def change
    add_column :spots, :images, :json
  end
end
