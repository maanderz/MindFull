class MealPlan < ApplicationRecord
  
  belongs_to :user

  validates :recipe, presence: true
  validates :weekday, presence: true
  validates :user_id, presence: true

end
