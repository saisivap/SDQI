json.extract! complaint, :id, :description, :type, :block, :floor, :user_id, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
