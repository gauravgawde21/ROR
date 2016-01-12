require 'sinatra'

get '/' do
"Hello World"
end 

get '/:greeting/?:name?' do
"#{params[:greeting]}, #{params[:name] ? params[:name] : 'world'}!"
end

get '/:name' do
"Hello, #{params[:name]}!"
end


