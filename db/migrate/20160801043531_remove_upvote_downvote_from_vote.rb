class RemoveUpvoteDownvoteFromVote < ActiveRecord::Migration
  def change
    remove_column :votes, :upvote, :string
    remove_column :votes, :downvote, :string
  end
end
