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

      it "should not validate without an address" do
        @place = Place.create(name: "test name", address: nil, description: "test description", hours: "X until X")
        expect(@place).to_not be_valid
      end

      it "should allow validation without description" do
        @place = Place.create(name: "test name", address: "100 Example St, City, Tx 78701", description: nil, hours: "X until X")
        expect(@place).to be_valid
      end

      it "should allow validation without hours" do
        @place = Place.create(name: "test name", address: "100 Example St, City, Tx 78701", description: "test description", hours: nil)
        expect(@place).to be_valid
      end
    end
  end

  describe "associations" do
    context "when setting up db schema for Place" do
    end
  end
end
