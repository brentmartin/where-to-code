class AddTypeToVote < ActiveRecord::Migration
  def change
    add_column :votes, :type, :string
  end
end
