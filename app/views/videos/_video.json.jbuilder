json.extract! video, :id, :title, :picture, :description, :created_at, :updated_at
json.url video_url(video, format: :json)