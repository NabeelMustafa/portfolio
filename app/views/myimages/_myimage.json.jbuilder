json.extract! myimage, :id, :image, :created_at, :updated_at
json.url myimage_url(myimage, format: :json)
