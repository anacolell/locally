class Meetup < ApplicationRecord
  belongs_to :local, class_name: 'User'
  belongs_to :tourist, class_name: 'User'

  validates :location, presence: true
  validates :date_time, presence: true
end
