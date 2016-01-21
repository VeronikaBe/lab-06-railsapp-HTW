require 'rails_helper'

describe "pumpkin overview", :type => :feature do
  before :each do

  end

  it "sorted by prize " do |variable|
    visit "/pumpkins"
    click_link 'Sort By Prize'
  end
end
