class RemoveIdsFromMeetups < ActiveRecord::Migration[6.0]
  def change
    remove_reference :meetups, :user #, foreign_key: true
    remove_column :meetups, :local_id, :integer
    add_column :meetups, :local_id, :integer, foreign_key: true
    add_column :meetups, :tourist_id, :integer, foreign_key: true
  end
end
