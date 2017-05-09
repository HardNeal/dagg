class Point < ApplicationRecord
  belongs_to :tracker
  validates :longtitude, presence: true,
                         inclusion: { in: -180...180 }, numericality: true
  validates :latitude, presence: true,
                       inclusion: { in: -90...90 }, numericality: true
end
