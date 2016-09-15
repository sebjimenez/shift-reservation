require 'rails_helper'
# include Devise::TestHelpers # this should work without this

RSpec.describe OffspringsController, type: :controller do
  feature "User access to offsprings", type: :feature do
    FactoryGirl.create(:offspring, first_name: "Sally", last_name: "Jones")
    scenario "visitor views its offsprings" do
      visit admin_rooms_path
      expect(page).to have_content "Add Room"
    end
    scenario "visitor creates a new offspring" do
      visit offsprings_new_path
      expect(page).to have_content "Add offspring"
    end
    scenario "visitor deletes a offspring" do
      visit root_path
      expect(page).to have_content "Delete"
    end
  end
end
