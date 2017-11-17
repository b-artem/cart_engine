module Cart
  module Forms
    class ShippingAddressForm < AddressForm
      def initialize(*args)
        super(*args)
        @type = 'ShippingAddress'
      end
    end
  end
end
