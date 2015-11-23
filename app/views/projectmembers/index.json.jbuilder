json.array!(@projectmembers) do |projectmember|
  json.extract! projectmember, :id, :email, :project_id
  json.url projectmember_url(projectmember, format: :json)
end
