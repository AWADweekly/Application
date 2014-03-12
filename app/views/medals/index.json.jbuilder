json.array!(@medals) do |medal|
  json.extract! medal, :id, :code, :name, :gold, :silver, :bronze
  json.url medal_url(medal, format: :json)
end
