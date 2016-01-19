require 'rails_helper'

describe "the customer page with order list", :type => :feature do
  before :each do
    @customer = create(:customer_with_orders)
    @id = @customer.id
  end

  it "customer is Dagobert" do
    expect(@customer.name).to eq "Dagobert"
  end

  it "order fits to customer" do
    @order = Order.find(@id)
    expect(@order.customer.name).to eq "Dagobert"
  end

  it "get an order" do
    @order = Order.find(@id)
    expect(@order.status).to eq "waiting"

  end

  it "get multiple orders" do
    @orders = Customer.where(name: "Dagobert").first.orders
    expect(@orders.first.id).to eq 1
    expect(@orders.first.customer.name).to eq "Dagobert"
  end

  it "number of orders" do
    @orders = Customer.where(name: "Dagobert").first.orders
    expect(@orders.size).to eq 5
  end

  it "orders on customer page" do
    visit '/customers/'+@customer.id.to_s
    expect(page).to have_content "Dagobert"
    expect(page).to have_content "waiting", count: 5
  end
end
