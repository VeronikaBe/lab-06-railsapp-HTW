require 'rails_helper'

describe "the order page", :type => :feature do
  before :each do
    @order = create(:order_with_line_items)
    @id = @order.id
    @line_item_1 = @order.lineitems.first
    @line_item_2 = @order.lineitems.second
  end

  it "is visited" do
    visit '/orders/' + @order.id.to_s
    expect(page).to have_content @order.id.to_s

    expect(page).to have_content 'Type'
    expect(page).to have_content 'Color'
    expect(page).to have_content 'Size'
    expect(page).to have_content 'Price'
    expect(page).to have_content 'Donald'
    expect(page).to have_content 'new'
  end

  it "shows the order's first pumpkin" do
    visit '/orders/' + @id.to_s
    @pumpkin_1 = @line_item_1.pumpkin

    expect(@pumpkin_1.name).to eq 'Plain Pumpkin 1'
    expect(@pumpkin_1.color).to eq 'sparkled'
    expect(@pumpkin_1.size).to eq 'l'
    expect(@pumpkin_1.price) == '7.0'

    expect(page).to have_content 'Plain Pumpkin 1'
    expect(page).to have_content 'sparkled'
    expect(page).to have_content 'l'
    expect(page).to have_content '7.0'
  end

  it "shows the lineitem's amount" do
    visit '/orders/' + @id.to_s

    expect(@line_item_1.amount).to eq 2
    expect(page).to have_content 2

    expect(@line_item_2.amount).to eq 1
    expect(page).to have_content 1
  end

end
