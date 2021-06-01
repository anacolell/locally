class CreateMeetups < ActiveRecord::Migration[6.0]
  def change
    create_table :meetups do |t|
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.date :date_time

      t.timestamps
    end
  end
end
