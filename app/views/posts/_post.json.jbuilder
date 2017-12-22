json.extract! post, :id, :author, :body, :name, :file, :created_at, :updated_at
json.url post_url(post, format: :json)
