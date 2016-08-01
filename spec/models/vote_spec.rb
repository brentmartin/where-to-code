require 'rails_helper'

RSpec.describe Vote, type: :model do

  describe "creation" do
    it "should have one item created after being created" do
      @vote = Vote.create!(pick: "example_vote", place_id: 1)
      expect(Vote.all.count).to eq(1)
    end

    context "when creating a new Vote" do
      it "should not let a Vote be created without a pick" do
        @vote = Vote.create(pick: nil)
        expect(@vote).to_not be_valid
      end

      context "that is for a Place" do
        it "should not let a Vote be created without a place_id" do
          @vote = Vote.create(pick: "example_vote", place_id: nil)
          expect(@vote).to_not be_valid
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
