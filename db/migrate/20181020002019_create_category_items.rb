class CreateCategoryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :category_items do |t|
      t.references :category, index: true, foreign_key: true
      t.string :ingredient_name
      
      t.timestamps
    end
  end
end
