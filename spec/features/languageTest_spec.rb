require 'rails_helper'

 describe "language selection", :type => :feature do

   it "site in German" do
     visit '/customers'
     click_on ('Deutsch')
     expect(page).to have_content 'Kundenliste'
   end

   it "site in French" do
     visit '/customers'
     click_on ('Français')
     expect(page).to have_content 'Liste de clients'
   end

   it "site in English" do
     visit '/customers'
     click_on ('English')
     expect(page).to have_content 'Listing customers'
   end
 end
