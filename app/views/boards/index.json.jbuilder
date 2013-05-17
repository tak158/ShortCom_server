json.array!(@boards) do |board|
  json.extract! board, :id, :name, :comment_count
end