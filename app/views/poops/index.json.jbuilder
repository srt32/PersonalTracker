json.array!(@poops) do |poop|
  json.extract! poop, :user_id, :consistency, :notes
  json.url poop_url(poop, format: :json)
end
