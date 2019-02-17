json.extract! profile, :id, :name, :des, :loc, :dp, :from, :work, :cover, :created_at, :updated_at
json.url profile_url(profile, format: :json)
