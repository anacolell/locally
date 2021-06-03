class InterestCategory < ApplicationRecord
  has_many :interests, dependent: :destroy

  validates :name, presence: true
end
