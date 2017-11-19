module ShoppingCart
  module Forms
    class BillingAddressForm < AddressForm
      def initialize(*args)
        super(*args)
        @type = 'BillingAddress'
      end
    end
  end
end
