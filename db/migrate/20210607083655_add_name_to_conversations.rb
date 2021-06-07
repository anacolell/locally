class AddNameToConversations < ActiveRecord::Migration[6.0]
  def change
    add_column :conversations, :name, :string
  end
end
