json.array!(@boards) do |board|
  json.extract! board, :name, :comment_count
  json.url board_url(board, format: :json)
end