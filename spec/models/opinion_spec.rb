require 'rails_helper'

RSpec.describe Opinion, type: :model do

  before(:each) do
    @opinion = Opinion.create!(head: "opinion test head", body: "opinion test body, testing the body of the content", place_id: 1)
  end

  describe "creation" do
    it "should have one item created after being created" do
      expect(Opinion.all.count).to eq(1)
    end

    context "when creating a new Opinion" do
      it "should not let an Opinion be created without a body" do
        expect(@opinion).to_not be_valid
      end

      it "should not let an Opinion be created without an ID associated to a Place" do
        @place = Place.create(name: "test name", address: "100 Example St, City, Tx 78701", description: "test description", hours: "X until X")
        expect(@opinion).to_not be_valid
      end

      it "should allow a Opinion to be created without a head" do
        expect(@opinion).to be_valid
      end

      it "should not accept body of an Opinion with less than 1 character" do
        expect(@opinion).to_not be_valid
      end

      it "should not accept body of an Opinion with more than 160 characters" do
        expect(@opinion).to_not be_valid
      end
    end
  end

  describe "associations" do
    context "when setting up db schema for Opinion" do
      it "should belong to places" do
        @opinion = Opinion.reflect_on_association(:places)
        @opinion.macro.should == :belongs_to
      end
    end
  end

end
