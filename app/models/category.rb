class Category < ApplicationRecord

  has_many :category_items
  
  validates :name, presence: true

end
