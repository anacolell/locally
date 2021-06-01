class RemoveUserFromMeetups < ActiveRecord::Migration[6.0]
  def change
    remove_column :meetups, :user1_id
    remove_column :meetups, :user2_id
    add_column :meetups, :local_id, :integer, foreign_key: true
  end
end
