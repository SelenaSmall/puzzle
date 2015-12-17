json.array!(@puzzleskeletons) do |puzzleskeleton|
  json.extract! puzzleskeleton, :id
  json.url puzzleskeleton_url(puzzleskeleton, format: :json)
end
