class Place < ActiveRecord::Base
  has_many :opinions

  validates_presence_of :name
  validates_presence_of :address
end
