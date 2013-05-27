json.array!(@ng_users) do |ng_user|
  json.extract! ng_user, :user_id, :target_user
  json.url ng_user_url(ng_user, format: :json)
end