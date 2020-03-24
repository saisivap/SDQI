json.extract! feedback, :id, :description, :complaint_id, :user_id, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
