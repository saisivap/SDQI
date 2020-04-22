class Roomsofaminite < ApplicationRecord
  belongs_to :aminite
  # has_many :aminitebookings
  has_many :bookingaminites
end
