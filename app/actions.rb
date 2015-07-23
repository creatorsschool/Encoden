get '/' do
	erb :index
end

# 404 Error!
not_found do
	status 404
	erb :not_found
end
