class CategoryItem < ApplicationRecord
  
  belongs_to :category 

  # validates :ingredient_name, presence: true

end
