class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :upvote
      t.boolean :downvote

      t.timestamps null: false
    end
  end
end
