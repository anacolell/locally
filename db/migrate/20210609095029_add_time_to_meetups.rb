class AddTimeToMeetups < ActiveRecord::Migration[6.0]
  def change
    add_column :meetups, :time, :datetime
  end
end
