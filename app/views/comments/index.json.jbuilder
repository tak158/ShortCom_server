json.array!(@comments) do |comment|
  json.extract! comment, :id, :note, :user_id, :board_id
end