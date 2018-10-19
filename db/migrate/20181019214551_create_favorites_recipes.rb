class CreateFavoritesRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites_recipes do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :recipe

      t.timestamps
    end
  end
end
