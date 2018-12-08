class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :generation

      t.timestamps
    end
  end
end