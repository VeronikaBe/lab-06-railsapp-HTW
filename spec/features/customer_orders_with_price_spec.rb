require 'rails_helper'
describe "the customer page with total order price", :type => :feature do
  before :each do
    @customer = create(:customer_with_priced_orders)
    @id = @customer.id
  end

  it "customer is Daisy" do
    expect(@customer.name).to eq "Daisy"
  end

  it "order fits to customer" do
    @order = Order.find(@id)
    expect(@order.customer.name).to eq "Daisy"
  end

  it "order has a price" do
    @order = Order.find(@id)
    expect(@order.price).to eq 6456.0
  end

  it "get multiple orders" do
    @orders = Customer.where(name: "Daisy").first.orders
    expect(@orders.first.id).to eq 1
    expect(@orders.first.customer.name).to eq "Daisy"
  end

  it "number of orders" do
    @orders = Customer.where(name: "Daisy").first.orders
    expect(@orders.size).to eq 5
  end

  it "orders on customer page" do
    visit '/customers/'+@customer.id.to_s
    expect(page).to have_content "Daisy"
    expect(page).to have_content "new"
    expect(page).to have_content "4"
    expect(page).to have_content "3"
    expect(page).to have_content "6456"
    expect(page).to have_content "2"
    expect(page).to have_content "34"
    expect(page).to have_content "Total: "
    expect(page).to have_content "6499.0"
  end
end
