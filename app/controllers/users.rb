get '/sessions/new' do
  erb :'users/login'
end

post '/sessions' do
  if User.exist?(params[:username])
    if User.authenticate?(params[:username], params[:password])
        session[:user] = User.find_by(username: params[:username])
      redirect to '/properties'
    end
  end
  redirect to '/users/errors'
end

delete '/sessions' do
  session[:user] = nil
  session[:property] = nil
  erb :'static/index'
end

get '/users/new' do
  erb :'users/signup'
end

post '/users' do
  User.create(name: params[:name], username: params[:username], password: params[:password])
  redirect to '/sessions/new'
end

get '/users/errors' do
  erb :'users/errors'
end