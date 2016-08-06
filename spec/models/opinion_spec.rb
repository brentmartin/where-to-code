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
        @opinion.body = nil
        expect(@opinion).to_not be_valid
      end

      context "that is for a Place" do
        it "should not let an Opinion be created without a place_id" do
          @opinion.place_id = nil
          expect(@opinion).to_not be_valid
        end

        it "should be a Place already created that has an ID that matches the place_id of the Opinion"
      end

      it "should allow a Opinion to be created without a head" do
        @opinion.head = nil
        expect(@opinion).to be_valid
      end

      it "should not accept body of an Opinion with less than 1 character" do
        @opinion.body = ""
        expect(@opinion).to_not be_valid
      end

      it "should not accept body of an Opinion with more than 160 characters" do
        @opinion.body = "the example for this string is exactly 161 characters, which is enough to make this test pass. One less character, in other words 160 characters, would break it."
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
