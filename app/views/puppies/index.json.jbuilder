json.array!(@puppies) do |puppy|
  json.extract! puppy, :id, :name, :years, :color
  json.url puppy_url(puppy, format: :json)
end
