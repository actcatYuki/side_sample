json.array!(@hoys) do |hoy|
  json.extract! hoy, :id, :hey, :index, :hello, :bye
  json.url hoy_url(hoy, format: :json)
end
