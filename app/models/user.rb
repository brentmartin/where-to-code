class User < ActiveRecord::Base
  include Clearance::User

  has_many :opinions
  has_many :votes

  validates_presence_of :name
end
