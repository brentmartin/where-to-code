require 'rails_helper'

RSpec.describe Vote, type: :model do

  describe "creation" do
    it "should have one item created after being created" do
      @vote = Vote.create!(pick: "example_vote")
      expect(Vote.all.count).to eq(1)
    end

    context "when creating a new Vote" do
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
