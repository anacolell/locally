class Recommendation < ApplicationRecord
  PRICING_TYPE = %w[free $ $$ $$$]
  validates :pricing, presence: true, inclusion: { in: PRICING_TYPE}
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :name, presence: true
  validates :description, presence: true
  has_one_attached :photo
end
