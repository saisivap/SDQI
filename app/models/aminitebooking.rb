class Aminitebooking < ApplicationRecord
  # self.primary_key = :roomsofaminite,:from_time_date,:to_time_date

  belongs_to :user
  belongs_to :roomsofaminite

end
