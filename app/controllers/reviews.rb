get '/reviews' do
  @reviews = Review.where(user: @current_user)
  erb :'reviews/index'
end

get '/reviews/new' do
  erb :'reviews/new'
end

post '/reviews' do
  Review.create(description: params[:review], property: session[:property], user: session[:user])
  redirect to '/properties'
end

get '/reviews/:id' do
  @review = Review.find(params[:id])
  session[:property] = @property
  erb :'reviews/show'
end

get '/reviews/:id/edit' do
  @review = Review.find(params[:id])
  erb :'reviews/edit'
end

put '/reviews/:id' do
  review = Review.find(params[:id])
  review.description = params[:review]
  review.save
  redirect to "/reviews/#{params[:id]}"
end

delete '/reviews/:id' do
  review = Review.find(params[:id])
  review.delete
  redirect to '/reviews'
end