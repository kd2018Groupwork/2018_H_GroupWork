class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :user_name
      t.string :password
      t.string :email
      t.integer :generation

    end
  end
end
