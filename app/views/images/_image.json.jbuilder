json.extract! image, :id, :author, :url, :created_at, :updated_at
json.url image_url(image, format: :json)
