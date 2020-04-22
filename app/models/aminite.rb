class Aminite < ApplicationRecord
  has_many :roomsofaminites
  has_many :aminitebookings
  has_many :bookingaminites
end
