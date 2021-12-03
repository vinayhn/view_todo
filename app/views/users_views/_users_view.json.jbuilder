json.extract! users_view, :id, :created_at, :updated_at
json.url users_view_url(users_view, format: :json)
