class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.references :ingredient, index: true, foreign_key: true
      t.string :name
      t.string :img
      t.text :instructions

      t.timestamps
    end
  end
end





