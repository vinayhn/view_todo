json.extract! tasks_view, :id, :created_at, :updated_at
json.url tasks_view_url(tasks_view, format: :json)
