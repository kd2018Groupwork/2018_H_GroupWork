class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :rating, :integer ,:default => 0
  end
end
