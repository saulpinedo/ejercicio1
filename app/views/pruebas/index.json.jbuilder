json.array!(@pruebas) do |prueba|
  json.extract! prueba, :id, :persona_id
  json.url prueba_url(prueba, format: :json)
end
