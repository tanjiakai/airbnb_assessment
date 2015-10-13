get '/properties' do
  @properties = Property.all
  @user = session[:user]
  erb :'properties/index'
end

get '/properties/new' do

end

post '/properties/new' do

end

get '/properties/:id' do
  @property = Property.find(params[:id])
  session[:property] = Property.find(params[:id])
  erb :'properties/show'
end

get '/properties/:id/edit' do

end

put '/properties/:id' do

end

delete '/properties/:id' do

end