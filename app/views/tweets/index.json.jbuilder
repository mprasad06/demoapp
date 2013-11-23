json.array!(@tweets) do |tweet|
  json.extract! tweet, :status, :user_id
  json.url tweet_url(tweet, format: :json)
end
