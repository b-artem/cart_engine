module ShoppingCart
  module Concerns
    module Validations
      private

      def positive_integer?(string)
        return false if Float(string) <= 0
        true if (Float(string) - Integer(string)).zero?
      rescue
        false
      end
    end
  end
end
