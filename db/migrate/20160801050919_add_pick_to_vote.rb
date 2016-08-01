class AddPickToVote < ActiveRecord::Migration
  def change
    add_column :votes, :pick, :string
  end
end
