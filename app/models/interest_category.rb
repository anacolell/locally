class InterestCategory < ApplicationRecord
  has_many :interests

  validates :name, presence: true
end
