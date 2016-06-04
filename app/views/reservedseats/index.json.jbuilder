json.array!(@reservedseats) do |reservedseat|
  json.extract! reservedseat, :id, :seat_id, :booking_id, :showing_id
  json.url reservedseat_url(reservedseat, format: :json)
end
