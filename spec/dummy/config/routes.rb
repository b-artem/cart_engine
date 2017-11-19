Rails.application.routes.draw do
  devise_for :users
  mount ShoppingCart::Engine => "/shopping_cart"
  root to: "shopping_cart/carts#show"
end
