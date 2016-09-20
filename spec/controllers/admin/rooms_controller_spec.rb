require 'rails_helper'
# include Devise::TestHelpers # this should work without this

RSpec.describe Admin::RoomsController, type: :controller do

  feature "Access to view rooms information", type: :feature do
    context "when logged in as admin" do
      scenario "when user is not authenticated" do
      #it has to redirect to a sign_in page
      end
      scenario "when user is not authenticated" do
      #visit admin_rooms_path
      #expect(page).to have_content "This site is protected. Please log in first."
      end
    end
    context "when logged in as admin" do
      before(:each) do
        admin = FactoryGirl.create(:admin)
        #login_as(admin , :scope => :admin)
      end
      scenario "admin searches for a specific user" do
      end
    end
  end
end

#smith = FactoryGirl.create(:room, name: "John", capacity: 12)

#FactoryGirl.create(:contact, firstname: "Sally", lastname: "Jones")

#visit admin_dashboard_path
#expect(page).to have_content "Sign In"
#expect(page).to have_content "Sally Jones"

#let(:admin) { FactoryGirl.build_stubbed(:admin) }
#post :create, room: {name: "RoomPrueba1", capacity:'12'}
#expect(response).to render_template(new_admin_session_path)

#expect(current_path).to eq contact_path(smith)

#within "h1" do
#  expect(page).to have_content "John Smith"
