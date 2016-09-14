json.extract! photo, :id, :title, :path, :created_at, :updated_at
json.url photo_url(photo, format: :json)