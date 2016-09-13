json.extract! occupant, :id, :firstname, :lastname, :roomnumber, :created_at, :updated_at
json.url occupant_url(occupant, format: :json)