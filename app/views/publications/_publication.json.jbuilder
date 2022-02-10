json.extract! publication, :id, :user_id, :book_id, :created_at, :updated_at
json.url publication_url(publication, format: :json)
