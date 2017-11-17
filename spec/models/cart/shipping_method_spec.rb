# require 'rails_helper'

module Cart
  RSpec.describe ShippingMethod, type: :model do
    let(:shipping_method) { build :cart_shipping_method }

    it 'has a valid factory' do
      expect(shipping_method).to be_valid
    end

    describe 'associations' do
      it { is_expected.to have_many(:orders) }
    end
  end
end
