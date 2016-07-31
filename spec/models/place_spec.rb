require 'rails_helper'

RSpec.describe Place, type: :model do

  before(:each) do
    @place = Place.create!(name: "test name", address: "100 Example St, City, Tx 78701", description: "test description", hours: "X until X")
  end

  describe "creation" do
    it "should have one item created after being created" do
      expect(Place.all.count).to eq(1)
    end

    context "when validating new Place" do
      it "should not validate without a name" do
        @place.name = nil
        expect(@place).to_not be_valid
      end

      it "should not validate without an address" do
        @place.address = nil
        expect(@place).to_not be_valid
      end

      it "should allow validation without description" do
        @place.description = nil
        expect(@place).to be_valid
      end

      it "should allow validation without hours" do
        @place.hours = nil
        expect(@place).to be_valid
      end
    end
  end

  describe "associations" do
    context "when setting up db schema for Place" do
      it "should have many opinions associated" do
        @place = Place.reflect_on_association(:opinions)
        @place.macro.should == :has_many
      end

      it "should have many votes associated" do
        @place = Place.reflect_on_association(:votes)
        @place.macro.should == :has_many
      end
    end
  end
end
