class Place < ActiveRecord::Base
  has_many :opinions
  has_many :votes

  validates_presence_of :name
  validates_presence_of :address
end
