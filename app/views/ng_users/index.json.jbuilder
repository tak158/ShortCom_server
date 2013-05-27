json.array!(@ng_users) do |ng_user|
  json.extract! ng_user, :id, :user_id, :target_user
end