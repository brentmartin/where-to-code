require 'rails_helper'

RSpec.describe User, type: :model do

  describe "creation" do
    it "should have one item created after being created" do
    @user = User.create!(email: "test@example.com", password: "password")
      expect(User.all.count).to eq(1)
    end
  describe "associations" do
    context "when setting up db schema for User" do
      it "should have many opinions associated" do
        @user = User.reflect_on_association(:opinions)
        @user.macro.should == :has_many
      end
    end
  end
end
