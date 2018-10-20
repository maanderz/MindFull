json.extract! recipe, :id, :name, :img, :ingredients_id, :instructions, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
