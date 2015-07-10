require 'sinatra'

# Classes


# Methods



# Routes

# homepage
get '/' do
	erb :index
end

# about
get '/about' do

	erb :about
end

# faq
get '/faq' do

end

# contact
get '/contact' do
	
end

# pricing
get '/pricing' do
	
end

# signin
get '/signin' do
	

end

# signup
get '/signup' do

end

# 404 Error!
not_found do
  # status 404
     erb :oops
end
