json.array!(@stores) do |store|
  json.extract! store, :id, :store_name, :stor_catch, :store_genre, :store_area, :store_description, :store_address, :store_access, :store_movie
  json.url store_url(store, format: :json)
end
