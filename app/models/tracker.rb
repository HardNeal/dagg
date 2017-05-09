class Tracker < ApplicationRecord
  validates :imei_code, presence: true, imei: true, uniqueness: true

  validates :phone, presence: true

  belongs_to :user

  has_many :points

  belongs_to :protocol
end