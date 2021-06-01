class RemoveAndAddIdsToConversations < ActiveRecord::Migration[6.0]
  def change
    add_column :conversations, :local_id, :integer, foreign_key: true
    remove_reference :conversations, :user
  end
end
