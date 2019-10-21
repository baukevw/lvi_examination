json.extract! client, :id, :name, :street, :number, :zipcode, :city, :contact_name, :contact_phone, :contact_email, :created_at, :updated_at
json.url client_url(client, format: :json)
