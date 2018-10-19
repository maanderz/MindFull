json.extract! favorites_recipe, :id, :name, :recipe, :user_id, :created_at, :updated_at
json.url favorites_recipe_url(favorites_recipe, format: :json)
