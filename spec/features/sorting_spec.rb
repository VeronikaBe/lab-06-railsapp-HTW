require 'rails_helper'

describe "pumpkin overview", :type => :feature do
  before :each do
    
  end

  it "sorted by prize " do |variable|
    visit "/pumpkins"
    click_link 'Price'

  end

  it "sorted by type/name" do |variable|
    visit "/pumpkins"
    click_link 'Name'

  end

  it "sorted by color" do |variable|
    visit "/pumpkins"
    click_link 'Color'

  end


  it "sorted by size" do |variable|
    visit "/pumpkins"
    click_link 'Size'

  end

end
