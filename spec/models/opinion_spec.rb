require 'rails_helper'

RSpec.describe Opinion, type: :model do

  describe "creation" do
    it "should have one item created after being created" do
      @opinion = Opinion.create(head: "opinion test head", body: "opinion test body, testing the body of the content")
      expect(Opinion.all.count).to eq(1)
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
end
