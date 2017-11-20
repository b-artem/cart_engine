ShoppingCart::Engine.routes.draw do
  resources :carts, only: %i[show update]
  resources :line_items, only: %i[create update destroy]
end
