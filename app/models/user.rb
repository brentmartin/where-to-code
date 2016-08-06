class User < ActiveRecord::Base
  include Clearance::User

  has_many :opinions
  has_many :votes
end
