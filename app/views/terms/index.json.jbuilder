json.array!(@terms) do |term|
  json.extract! term, :id, :term_name
  json.url term_url(term, format: :json)
end
