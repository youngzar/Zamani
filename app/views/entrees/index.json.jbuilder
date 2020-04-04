json.array!(@entrees) do |entree|
  json.extract! entree, :id, :food, :menu, :description
  json.url entree_url(entree, format: :json)
end
