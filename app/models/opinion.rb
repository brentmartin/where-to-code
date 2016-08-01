class Opinion < ActiveRecord::Base
  belongs_to :places

  validates_presence_of :body
  validates_presence_of :place_id
  validates_length_of :body, minimum: 1, allow_blank: true
end
