class RemoveIDsAddForeignKeysToConversations < ActiveRecord::Migration[6.0]
  def change
    remove_column :conversations, :user1_id
    remove_column :conversations, :user2_id
    add_column :conversations, :local_id, :integer, foreign_key: true
    add_column :conversations, :tourist_id, :integer, foreign_key: true
    remove_column :conversations, :local_id, :integer
  end
end
