class AddUser1AndUser2ToConversations < ActiveRecord::Migration[6.0]
  def change
    add_column :conversations, :user1_id, :integer
    add_column :conversations, :user2_id, :integer
  end
end
