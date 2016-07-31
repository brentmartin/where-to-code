require 'rails_helper'

RSpec.describe Place, type: :model do

  describe "creation" do
    it "should have one item created after being created" do
      @place = Place.create(name: "test name", address: "100 Example St, City, Tx 78701", description: "test description", hours: "X until X")
      expect(Place.all.count).to eq(1)
    end

    context "when validating new Place" do
      it "should not validate without a name" do
        @place = Place.create(name: nil, address: "100 Example St, City, Tx 78701", description: "test description", hours: "X until X")
        expect(@place).to_not be_valid
      end
  end
  end
end
