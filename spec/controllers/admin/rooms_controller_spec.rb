require 'rails_helper'
# include Devise::TestHelpers # this should work without this

RSpec.describe Admin::RoomsController, type: :controller do
  context "When not authenticated," do
    let(:admin) { FactoryGirl.build_stubbed(:admin) }

    it "does not allow to create" do
      post :create, room: {name: "RoomPrueba1", capacity:'12'}
      expect(response).to redirect_to(new_admin_session_path)
    end
  end
  end
