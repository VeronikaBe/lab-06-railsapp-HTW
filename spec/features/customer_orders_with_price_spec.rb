require 'rails_helper'
describe "the customer page with total order price", :type => :feature do
  before :each do
    @customer = create(:customer_orders_with_price)
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
    expect(@order.price).to eq 10.6
  end

  it "get multiple orders" do
    @orders = Customer.where(name: "Daisy").first.orders
    expect(@orders.first.id).to eq 1
    expect(@orders.first.customer.name).to eq "Daisy"
  end

  it "number of orders" do
    @orders = Customer.where(name: "Daisy").first.orders
    expect(@orders.size).to eq 3
  end

  it "orders on customer page" do
    visit '/customers/'+@customer.id.to_s
    expect(page).to have_content "Daisy"
    expect(page).to have_content "new"
    expect(page).to have_content "10.6"
    expect(page).to have_content "Total: "
    expect(page).to have_content "31.8"
  end

end
