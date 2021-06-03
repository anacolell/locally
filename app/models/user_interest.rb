class UserInterest < ApplicationRecord
  belongs_to :user
  belongs_to :interest #, dependent: :delete
  # has_many :interests, dependent: :delete_all
end
