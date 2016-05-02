json.array!(@courses) do |course|
  json.extract! course, :id, :name, :num_cred
  json.url course_url(course, format: :json)
end
