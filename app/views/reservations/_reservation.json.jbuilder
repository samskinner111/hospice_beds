json.extract! reservation, :id, :bed_id, :user_id, :reserve_date, :reopen_date, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)