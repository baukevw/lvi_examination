json.extract! client_inspection, :id, :project_number, :project_name, :inspection_date, :inspection_address_street, :inspection_address_number, :inspection_address_zipcode, :inspection_address_city, :contact_person_name, :contact_person_phone, :contact_person_email, :report_compiler, :release_date, :approved, :building_image, :created_at, :updated_at
json.url client_inspection_url(client_inspection, format: :json)
