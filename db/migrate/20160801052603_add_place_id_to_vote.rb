class AddPlaceIdToVote < ActiveRecord::Migration
  def change
    add_column :votes, :place_id, :integer
  end
end
