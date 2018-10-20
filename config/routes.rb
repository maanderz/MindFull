Rails.application.routes.draw do
  resources :category_items
  resources :categories
  resources :meal_plans
  resources :favorites_recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
