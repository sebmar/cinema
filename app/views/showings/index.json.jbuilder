json.array!(@showings) do |showing|
  json.extract! showing, :id, :screening
  json.url showing_url(showing, format: :json)
end
