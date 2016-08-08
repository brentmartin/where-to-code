require 'rails_helper'

RSpec.describe Vote, type: :model do

  before(:each) do
    @vote = Vote.create!(pick: "up_vote", place_id: 1, user_id: 1)
  end

  describe "creation" do
    it "should have one item created after being created" do
      expect(Vote.all.count).to eq(1)
    end

    context "when creating a new Vote" do
      it "should not let a Vote be created without a pick" do
        @vote.pick = nil
        expect(@vote).to_not be_valid
      end

      context "that is for a Place" do
        it "should not let a Vote be created without a place_id" do
          @vote.place_id = nil
          expect(@vote).to_not be_valid
        end

        it "should be a Place already created that has an ID that matches the place_id of the Vote"
      end

      context "that needs a valid option for pick" do
        it "should not accept an invalid entry" do
          @vote.pick = "invalid_vote"
          expect(@vote).to_not be_valid
        end

        it "should accept the entry 'up_vote'" do
          @vote.pick = "up_vote"
          expect(@vote).to be_valid
        end

        it "should accept the entry 'down_vote'" do
          @vote.pick = "down_vote"
          expect(@vote).to be_valid
        end
      end
    end
  end

  describe "associations" do
    context "when setting up db schema for Vote" do
      it "should belong to places" do
        @vote = Vote.reflect_on_association(:places)
        @vote.macro.should == :belongs_to
      end
    end
  end
end
