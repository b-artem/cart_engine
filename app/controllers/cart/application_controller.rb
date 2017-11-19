module Cart
  class ApplicationController < ::ApplicationController
    require_relative 'concerns/controllers/application_controller'
    include Cart::Concerns::Controllers::ApplicationController
    protect_from_forgery with: :exception
  end
end
