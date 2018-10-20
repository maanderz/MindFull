class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.references :category, index: true, foreign_key: true
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end





