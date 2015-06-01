json.array!(@wikipages) do |wikipage|
  json.extract! wikipage, :id, :title, :body
  json.url wikipage_url(wikipage, format: :json)
end
