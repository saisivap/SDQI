class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :aminite
  belongs_to :roomsofaminite
end
