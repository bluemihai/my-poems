json.extract! user, :id, :handle, :email, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
