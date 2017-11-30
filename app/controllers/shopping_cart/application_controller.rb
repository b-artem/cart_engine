module ShoppingCart
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception
    include Concerns::Controllers::ApplicationController

    def current_ability
      @current_ability ||= Ability.new(current_user, session)
    end
  end
end
