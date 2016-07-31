class Place < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :description
  validates_presence_of :hours
end
