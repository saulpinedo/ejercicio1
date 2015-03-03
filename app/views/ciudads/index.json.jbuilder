json.array!(@ciudads) do |ciudad|
  json.extract! ciudad, :id, :nombre, :pai_id
  json.url ciudad_url(ciudad, format: :json)
end
