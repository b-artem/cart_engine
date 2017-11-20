ShoppingCart::Engine.routes.draw do
  # namespace :orders do
  #   get 'orders/index'
  # end
  #
  # namespace :orders do
  #   get 'orders/show'
  # end
  #
  # namespace :orders do
  #   get 'orders/create'
  # end
  resources :orders, controller: 'orders/orders', only: %i[index show create] #do
  #   resources :checkout, controller: 'orders/checkout', only: [:index, :show, :update]
  # end

  resources :carts, only: %i[show update]
  resources :line_items, only: %i[create update destroy]
end
