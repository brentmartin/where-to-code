class Vote < ActiveRecord::Base
  belongs_to :places

  validates_presence_of :pick
  validates_presence_of :place_id
  validates_inclusion_of :pick, in: ["example_vote", "up_vote"]
end
