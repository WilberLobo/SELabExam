json.array!(@requirements) do |requirement|
  json.extract! requirement, :id, :name, :description, :contact
  json.url requirement_url(requirement, format: :json)
end
