json.extract! appointment_file, :id, :name, :desc, :document, :appointment_id, :created_at, :updated_at
json.url appointment_file_url(appointment_file, format: :json)
