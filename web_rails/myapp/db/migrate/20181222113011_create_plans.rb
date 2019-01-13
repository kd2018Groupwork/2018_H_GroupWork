class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.integer :user_id
      t.integer :plan_id
      t.string  :plan_name

      t.timestamps
    end
  end
end
