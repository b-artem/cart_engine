module ShoppingCart
  class ApplicationController < ::ApplicationController
    include ShoppingCart::Concerns::Controllers::ApplicationController
    protect_from_forgery with: :exception

    def current_ability
      @current_ability ||= Ability.new(current_user, session)
    end
  end
end
