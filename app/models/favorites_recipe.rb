class FavoritesRecipe < ApplicationRecord

  validates :name, presence: true
  validates :recipe, presence: true
  validates :user_id, presence: true
  
end
