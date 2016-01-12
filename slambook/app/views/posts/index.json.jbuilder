json.array!(@posts) do |post|
  json.extract! post, :id, :name, :address, :dob, :desire, :interests, :hobby, :signature
  json.url post_url(post, format: :json)
end
