class ParkingLot < ApplicationRecord
  validates :lot, presence: true, uniqueness: true
end
