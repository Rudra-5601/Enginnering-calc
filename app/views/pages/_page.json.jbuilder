json.extract! page, :id, :home, :title, :body, :comment, :created_at, :updated_at
json.url page_url(page, format: :json)
