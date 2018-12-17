class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :spot_id
      t.string :image_path

      t.timestamps
    end
  end
end
