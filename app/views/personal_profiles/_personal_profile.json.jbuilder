json.extract! personal_profile, :id, :full_name, :bio, :created_at, :updated_at
json.url personal_profile_url(personal_profile, format: :json)
