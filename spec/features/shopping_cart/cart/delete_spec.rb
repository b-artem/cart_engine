require 'rails_helper'
require 'support/capybara'
require 'support/devise'

module ShoppingCart
  shared_examples 'delete' do
    let(:product) { create :product }
    background { visit main_app.root_path }

    context "user clicks 'x' button", js: true do
      let!(:line_item) { create(:shopping_cart_line_item, cart: ShoppingCart::Cart.last, product: product) }
      background { visit shopping_cart.cart_path(ShoppingCart::Cart.last) }

      scenario 'removes product from Cart view' do
        click_button("delete-#{line_item.id}")
        expect(page).not_to have_content(line_item.product.title)
        expect(page).to have_content(I18n.t('shopping_cart.line_items.destroy.success'))
      end

      scenario 'decrements number of products in Cart' do
        expect { click_button("delete-#{line_item.id}"); wait_for_ajax }
                  .to change { ShoppingCart::Cart.last.line_items.count }.by(-1)
      end
    end
  end

  feature 'Cart' do
    feature 'Delete' do
      context 'when user is a guest' do
        include_examples 'delete'
      end

      context 'when user is logged in' do
        let(:user) { create(:user) }
        background { sign_in user }
        include_examples 'delete'
      end
    end
  end
end
