json.extract! book, :id, :title, :picture, :description, :created_at, :updated_at
json.url book_url(book, format: :json)