class CreateMealPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_plans do |t|
      t.references :user, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true
      t.string :weekday

      t.timestamps
    end
  end
end

