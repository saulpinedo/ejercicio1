json.array!(@pais) do |pai|
  json.extract! pai, :id, :nombre, :descripcion
  json.url pai_url(pai, format: :json)
end
