class FavoritesRecipe < ApplicationRecord

  belongs_to :user
  has_many :recipes 
  
  # validates :name, presence: true
  # validates :recipe, presence: true
  # validates :user_id, presence: true

end
