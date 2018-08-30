json.extract! appointment, :id, :da, :reason, :diagnostics, :dn, :prescription, :comments, :user_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
