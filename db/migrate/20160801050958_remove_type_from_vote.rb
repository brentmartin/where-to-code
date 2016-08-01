class RemoveTypeFromVote < ActiveRecord::Migration
  def change
    remove_column :votes, :type, :string
  end
end
