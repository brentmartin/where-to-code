class Vote < ActiveRecord::Base
  belongs_to :places

  validates_presence_of :pick
end
