get '/' do
	erb :index
end

post '/user/add' do
  User.create({
    email: params[:email],
    teacher: true
    })
  redirect '/'  
end

# 404 Error!
not_found do
	status 404
	erb :not_found
end
