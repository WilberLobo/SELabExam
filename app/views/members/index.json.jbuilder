json.array!(@members) do |member|
  json.extract! member, :id, :user_id, :project_id
  json.url member_url(member, format: :json)
end
