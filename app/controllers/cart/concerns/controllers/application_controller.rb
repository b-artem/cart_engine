  module Cart::Concerns::Controllers::ApplicationController
    extend ActiveSupport::Concern

    included do
      before_action :set_cart

      protected

        def set_cart
          @cart = Cart::Cart.find(session[:cart_id])
        rescue ActiveRecord::RecordNotFound
          @cart = Cart::Cart.create
          session[:cart_id] = @cart.id
        end
    end
  end
