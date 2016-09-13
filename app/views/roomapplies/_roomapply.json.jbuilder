json.extract! roomapply, :id, :fullname, :description, :email, :created_at, :updated_at
json.url roomapply_url(roomapply, format: :json)