require 'rails_helper'

RSpec.describe User, type: :model do

  describe "creation" do
    it "should have one item created after being created" do
    @user = User.create!(email: "test@example.com", password: "password")
      expect(User.all.count).to eq(1)
    end
end
