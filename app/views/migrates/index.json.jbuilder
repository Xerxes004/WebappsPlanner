json.array!(@migrates) do |migrate|
  json.extract! migrate, :id, :AddDescriptionToPlans, :description
  json.url migrate_url(migrate, format: :json)
end
