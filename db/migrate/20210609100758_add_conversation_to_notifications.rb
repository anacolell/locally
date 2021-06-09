class AddConversationToNotifications < ActiveRecord::Migration[6.0]
  def change
    add_reference :notifications, :conversation, null: false, foreign_key: true
    add_column :notifications, :seen, :boolean, default: false
  end
end
