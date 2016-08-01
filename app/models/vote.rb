class Vote < ActiveRecord::Base
  belongs_to :places

  validates_presence_of :pick
  validates_presence_of :place_id
end
