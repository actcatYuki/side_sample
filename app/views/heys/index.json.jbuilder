json.array!(@heys) do |hey|
  json.extract! hey, :id, :hey, :index, :hello, :bye
  json.url hey_url(hey, format: :json)
end
