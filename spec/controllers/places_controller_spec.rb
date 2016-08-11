require 'rails_helper'

RSpec.describe PlacesController, type: :controller do
  render_views

  describe "GET /places" do
    it "returns a place" do
      Place.create(name: "test name", address: "100 Example St, City, Tx 78701")
      get :index
      expect(response.body).to include("test name")
    end

  end

end
