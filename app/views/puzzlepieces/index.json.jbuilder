json.array!(@puzzlepieces) do |puzzlepiece|
  json.extract! puzzlepiece, :id, :number
  json.url puzzlepiece_url(puzzlepiece, format: :json)
end
