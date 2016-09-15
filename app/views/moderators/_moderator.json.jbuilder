json.extract! moderator, :id, :first_name, :last_name, :email_address, :mission_id, :username, :password, :created_at, :updated_at
json.url moderator_url(moderator, format: :json)