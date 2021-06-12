class Interest < ApplicationRecord
  belongs_to :interest_category

  has_many :user_interests, dependent: :destroy
  validates :name, presence: true
end
