require 'rails_helper'

describe "the order page with customer name", :type => :feature do
  before :each do
    @order = create(:order1)
    @customer = @order.customer

  end

  it "has a create order link" do
    visit "/orders"
    expect(page).to have_link 'New Order'
  end

  it "customer name fits to order" do
    expect (@customer.name) == "Track"
  end

  it "shows customer name in order list" do
    visit '/orders/'+@order.id.to_s
    expect(page).to have_content "Track"
  end
end
