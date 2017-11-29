require 'rails_helper'
require 'support/capybara'
require 'support/devise'

module ShoppingCart
  shared_examples 'changes quantity' do
    let(:product) { create :product }
    background { visit main_app.root_path }

    context 'when product quantity = 1', js: true do
      let(:line_item) { create(:shopping_cart_line_item, cart: ShoppingCart::Cart.last, product: product) }
      background { visit shopping_cart.cart_path(line_item.cart) }

      context "user clicks '+' button" do
        # wait_for_ajax does NOT help there
        subject { click_link("plus-#{line_item.id}"); sleep 0.1 }

        scenario 'increments quantity value in cart' do
          within "#line-item-#{line_item.id}" do
            expect { subject }.to change {
              page.find_by_id("input-line-item-#{line_item.id}").value.to_i }.by(1)
          end
        end

        scenario 'increments product quantity' do
          within "#line-item-#{line_item.id}" do
            expect { subject }.to change { LineItem.last.quantity }.by(1)
          end
        end
      end

      context "user clicks '-' button" do
        # wait_for_ajax does NOT help there
        subject { click_link("minus-#{line_item.id}"); sleep 0.1 }

        scenario 'does NOT decrement quantity value in cart' do
          within "#line-item-#{line_item.id}" do
            expect { subject }.not_to change {
              page.find_by_id("input-line-item-#{line_item.id}").value.to_i }
          end
        end

        scenario 'does NOT decrement product quantity' do
          within "#line-item-#{line_item.id}" do
            expect { subject }.not_to change { LineItem.last.quantity }
          end
        end
      end
    end

    context 'when product quantity = 2', js: true do
      let!(:line_item) do
        create(:shopping_cart_line_item, cart: ShoppingCart::Cart.last, product: product, quantity: 2)
      end
      background { visit shopping_cart.cart_path(ShoppingCart::Cart.last) }

      context "user clicks '-' button" do
        # wait_for_ajax does NOT help there
        subject { click_link("minus-#{line_item.id}"); sleep 0.1 }

        scenario 'decrements quantity value in cart' do
          within "#line-item-#{line_item.id}" do
            expect { subject }.to change {
              page.find_by_id("input-line-item-#{line_item.id}").value.to_i }.by(-1)
          end
        end

        scenario 'decrements product quantity' do
          expect { subject }.to change { LineItem.last.quantity }.by(-1)
        end
      end
    end
  end

  feature 'Cart' do
    feature 'Edit' do
      context 'when user is a guest' do
        include_examples 'changes quantity'
      end

      context 'when user is logged in' do
        let(:user) { create(:user) }
        background { sign_in user }
        include_examples 'changes quantity'
      end
    end
  end
end
