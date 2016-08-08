class Vote < ActiveRecord::Base
  belongs_to :places
  belongs_to :users

  validates_presence_of :pick, :place_id, :user_id
  validates_inclusion_of :pick, in: ["up_vote", "down_vote"]
end
