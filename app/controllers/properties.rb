get '/properties' do
  @properties = current_user.properties.all
  erb :'properties/index'
end

get '/properties/new' do
  erb :'properties/new'
end

post '/properties' do
  current_user.properties.create(title: params[:title], description: params[:description], price: params[:price])
  redirect to '/properties'
end

get '/properties/:id' do
  @property = Property.find(params[:id])
  session[:property] = Property.find(params[:id])
  erb :'properties/show'
end

get '/properties/:id/edit' do
  @property = Property.find(params[:id])
  erb :'properties/edit'
end

put '/properties/:id' do
  unless params[:title].blank?
    Property.find(params[:id]).update_attribute(:title, params[:title])
  end
  unless params[:description].blank?
    Property.find(params[:id]).update_attribute(:description, params[:description])
  end
  unless params[:price].blank?
    Property.find(params[:id]).update_attribute(:price, params[:price])
  end
  redirect to "/properties/#{params[:id]}"
end

delete '/properties/:id' do
  Property.find(params[:id]).destroy
  redirect to '/properties'
end