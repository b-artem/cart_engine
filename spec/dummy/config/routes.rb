Rails.application.routes.draw do
  devise_for :users
  mount Cart::Engine => "/cart"
  root to: "cart#show"
end
