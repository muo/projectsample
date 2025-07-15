json.extract! comment, :id, :content, :user_id, :project_id, :user_email, :created_at, :updated_at
json.url comment_url(comment, format: :json)
