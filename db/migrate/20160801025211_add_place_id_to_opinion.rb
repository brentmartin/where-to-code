class AddPlaceIdToOpinion < ActiveRecord::Migration
  def change
    add_column :opinions, :place_id, :integer
  end
end
