json.extract! user, :id, :name, :organization, :email, :reason, :created_at, :updated_at
json.url user_url(user, format: :json)
