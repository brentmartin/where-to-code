class Opinion < ActiveRecord::Base
  belongs_to :places
  belongs_to :users

  validates_presence_of :body, :place_id, :user_id
  validates_length_of :body, minimum: 1, maximum: 160, allow_blank: true
end
