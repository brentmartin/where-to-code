require 'rails_helper'

RSpec.describe Vote, type: :model do

  describe "creation" do
    it "should have one item created after being created" do
      @vote = Vote.create!(pick: "example_vote")
      expect(Vote.all.count).to eq(1)
    end
end
