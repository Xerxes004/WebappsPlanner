json.array!(@add_description_to_plans) do |add_description_to_plan|
  json.extract! add_description_to_plan, :id, :description
  json.url add_description_to_plan_url(add_description_to_plan, format: :json)
end
