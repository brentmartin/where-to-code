require 'rails_helper'

RSpec.describe Opinion, type: :model do

  describe "creation" do
    it "should have one item created after being created" do
      @opinion = Opinion.create(head: "opinion test head", body: "opinion test body, testing the body of the content")
      expect(Opinion.all.count).to eq(1)
    end
  end
end
