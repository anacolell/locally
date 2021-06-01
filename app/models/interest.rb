class Interest < ApplicationRecord
  belongs_to :interest_category

  validates :name, presence: true
end
