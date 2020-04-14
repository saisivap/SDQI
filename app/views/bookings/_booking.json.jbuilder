json.extract! booking, :id, :user_id, :aminite_id, :roomsofaminite_id, :from_time, :to_time, :date_of_the_day, :created_at, :updated_at
json.url booking_url(booking, format: :json)
