json.array!(@comments) do |comment|
  json.extract! comment, :id, :note, :user_id, :board_id, :created_at, :updated_at
end