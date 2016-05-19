json.array!(@bookings) do |booking|
  json.extract! booking, :id, :details, :number
  json.url booking_url(booking, format: :json)
end
