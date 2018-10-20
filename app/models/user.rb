class User < ApplicationRecord
  #has_secure_password
  has_many :meal_plans
  has_many :favorites_recipes

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, :length => {:minimum => 8 }
  validates :name, presence: true

end
