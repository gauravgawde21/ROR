require 'sinatra'
require 'twitter'

CLIENT = Twitter::REST::Client.new do |config|
  config.consumer_key        = "VL3fa3sjmikX8U1RLZVfjCmJM"
  config.consumer_secret     = "0lAnYefMtVNA7YDdnQLf6CHrfPwI68tVqT6IHZ3bsg4nvrsXfF"
  config.access_token        = "4744306999-l3Rk5v3ENVt4G0Ix9Du5FJGf8Xx7NxIq0RTABgv"
  config.access_token_secret = "DdlItthuTKUYtJsX3mnyEVGxUNflAKkxn7ZfFkFsiPSVa"
end

get '/' do
  @tweets = CLIENT.user_timeline.map { |tweet| tweet.text }
  erb :index
end

post '/tweet' do
  CLIENT.update(params[:tweet])
  redirect '/'
end

get '/display' do
  @tweets = CLIENT.user_timeline.map { |tweet| tweet.text }
  erb :display
end

get '/upload' do
  @tweets = CLIENT.user_timeline.map { |tweet|} 
  erb :publish_image	
end

get '/retweet' do
  
end
