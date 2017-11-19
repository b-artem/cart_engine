Cart::Engine.routes.draw do
  resources :carts, only: %i[show update]

end
