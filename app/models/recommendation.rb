class Recommendation < ApplicationRecord
  PRICING_TYPE = %w[free $ $$ $$$]
  validates :pricing, presence: true, inclusion: { in: PRICING_TYPE}
  validates :location, presence: true
  validates :name, presence: true
end
