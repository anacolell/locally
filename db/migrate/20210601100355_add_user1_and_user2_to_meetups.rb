class AddUser1AndUser2ToMeetups < ActiveRecord::Migration[6.0]
  def change
    add_column :meetups, :user1_id, :integer
    add_column :meetups, :user2_id, :integer
  end
end
