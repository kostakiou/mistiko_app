json.array!(@comments) do |comment|
  json.extract! comment, :id, :sxolio, :secret_id
  json.url comment_url(comment, format: :json)
end
