class Opinion < ActiveRecord::Base
  belongs_to :places

  validates_presence_of :body
end
