json.array!(@hoges) do |hoge|
  json.extract! hoge, :id, :hey, :index, :hello, :bye
  json.url hoge_url(hoge, format: :json)
end
