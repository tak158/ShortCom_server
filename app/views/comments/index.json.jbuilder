json.array!(@comments) do |comment|
  json.extract! comment, :note, :user_id, :board_id
  json.url comment_url(comment, format: :json)
end