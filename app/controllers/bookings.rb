get '/bookings' do
  @bookings = Booking.where(user: session[:user])
  erb :'bookings/index'
end

get '/bookings/new' do
  @booking = session[:property]
  erb :'bookings/new'
end

post '/bookings' do
  Booking.create(date: params[:date], user: session[:user], property: session[:property])
  redirect to '/bookings'
end

get '/bookings/:id' do
  @booking = Booking.find(params[:id])
  erb :'bookings/show'
end

get '/bookings/:id/edit' do
  @booking = Booking.find(params[:id])
  erb :'bookings/edit'
end

put '/bookings/:id' do
  @booking = Booking.find(params[:id])
  @booking.date = params[:date]
  @booking.save
  redirect '/bookings'
end

delete '/bookings/:id' do
  @booking = Booking.find(params[:id])
  @booking.delete
  redirect to '/bookings'
end