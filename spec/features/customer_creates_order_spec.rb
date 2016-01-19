require 'rails_helper'

describe "customer page", :type => :feature do
  before :each do
    @customer = create(:customer)
  end

  it "has a create order link" do
    visit "/customers/" +@customer.id.to_s
    expect(page).to have_link 'New Order'
  end
  it "initializes new order correctly" do
    @link = "/customers/" +@customer.id.to_s
    visit   @link
    click_link 'New Order'
    fill_in 'Status', with: :new
    click_button 'Create Order'
    order = Order.last
    expect(order.customer).to eq @customer
  end
end
