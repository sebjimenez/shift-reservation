require 'rails_helper'
# include Devise::TestHelpers # this should work without this

RSpec.describe Admin::RoomsController, type: :controller do
  feature "Navigating through rooms,", type: :feature do
    context "when not logged in as admin" do
      scenario "trying to access rooms dashboard" do
        visit admin_rooms_path
        expect(page).to have_content "You need to sign in or sign up before continuing."
      end
    end
    context "when logged in as admin" do
      # room = FactoryGirl.create(:room, name: "John", capacity: 12)
      let(:admin) { FactoryGirl.create(:room, name: "Room ABC", capacity: 12) }
      let(:admin) { FactoryGirl.create(:admin) }
      before(:each) do
        sign_in admin
      end
      scenario "deleting a rooom" do
        visit admin_rooms_path
        click_button "Delete room"
        expect(page).to have_content "Are you sure"
      end
      scenario "adding a new rooom" do
        visit admin_rooms_path
        # click_button "Add Room"
        expect(page).to have_content "aaa"
        # fill_in "Name", :with => "Room Without Name"
        # fill_in "Capacity", :with => "33"
      end
      scenario "updating a rooom" do
        # go to edit page
        visit admin_rooms_path
        # click_button "Room"
        expect(page).to have_content "Room"
        # click_button "Edit Room"
        # visit admin_rooms_path rooms/1/edit
        # fill_in "Name", :with => "New Name Yeah"
        # fill_in "Capacity", :with => "34"
        # click_button "Update Room"
      end
    end
  end
end
