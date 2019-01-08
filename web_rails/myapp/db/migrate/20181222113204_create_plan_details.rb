class CreatePlanDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_details do |t|
      t.belongs_to :plan, index: true
      t.datetime :date
      t.string :spot_name
      t.text :comment
      
      t.timestamps
    end
  end
end
