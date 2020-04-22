class Bookingaminite < ApplicationRecord
  belongs_to :user
  belongs_to :roomsofaminite
  belongs_to :aminite
  include PgSearch
  pg_search_scope :search_by_full_details, against: [:id, :booking_date]
end
