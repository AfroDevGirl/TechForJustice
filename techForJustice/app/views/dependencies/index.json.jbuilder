json.array!(@dependencies) do |dependency|
  json.extract! dependency, :id, :name, :description
  json.url dependency_url(dependency, format: :json)
end
