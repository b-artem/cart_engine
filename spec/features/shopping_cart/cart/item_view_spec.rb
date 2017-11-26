require 'rails_helper'
# require 'support/capybara'
require 'support/devise'

module ShoppingCart
  shared_examples 'item view' do
    before :all do
      RSpec.configure do |config|
        config.mock_with :rspec do |mocks|
          mocks.verify_partial_doubles = false
        end
      end
    end

    after :all do
      RSpec.configure do |config|
        config.mock_with :rspec do |mocks|
          mocks.verify_partial_doubles = true
        end
      end
    end

    let(:product) { create :product }
    background do
      allow_any_instance_of(ShoppingCart.product_class)
        .to receive_message_chain('images.[].image_url.file.url')
        .and_return('https://example.com/image.jpg')
    end

    # context 'when user clicks Cart icon in top right corner' do
    #   background { visit home_index_path }
    #   scenario 'Cart page opens' do
    #     click_link 'cart'
    #     expect(page).to have_text(t('carts.show.cart'))
    #     expect(page).to have_text(t('carts.show.enter_coupon'))
    #     expect(page).to have_button(t('carts.show.checkout'))
    #   end
    # end

    context 'when user wants to see Product details' do
      background do
        visit main_app.root_path
        create(:shopping_cart_line_item, cart: ShoppingCart::Cart.last, product: product)
        visit shopping_cart.cart_path(ShoppingCart::Cart.last)
      end

      # context 'user clicks Photo' do
      #   scenario 'Product view page opens' do
      #     click_link product_path(product)#"/shopping_cart/carts/photo-view-#{product.id}"
      #     expect(current_path).to eq product_path(product)
      #   end
      # end

      context 'user clicks Title' do
        scenario 'Product view page opens' do
          click_link "title-view-#{product.id}-xs"
          expect(current_path).to eq product_path(product)
        end
      end
    end
  end

  feature 'Cart' do
    feature 'Item view' do
      context 'when user is a guest' do
        it_behaves_like 'item view'
      end

      context 'when user is logged in' do
        let(:user) { create(:user) }
        background { sign_in user }
        it_behaves_like 'item view'
      end
    end
  end
end
