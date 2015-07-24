get '/' do
	erb :"frontend/index"
end

post '/user/add' do
  user = User.create({
    email: params[:email],
    teacher: true
    })
  redirect "/user/new/#{user.id}"
end

get "/user/new/:id" do
  @user = User.find(params[:id])
  erb :"frontend/new_user"
end

post "/user/new/:id" do
  User.update(params[:id], params.slice("name"))
  redirect "/dashboard/#{params[:id]}"
end

get "/dashboard/:id" do
  @user = User.find(params[:id])
  erb :"backend/dashboard"
end

get "/user/edit/:id" do
  @user = User.find(params[:id])
  erb :"backend/edit_user"
end

post "/user/edit/:id" do
  User.update(params[:id], params.slice("name", "email"))
  redirect "/user/edit/#{params[:id]}"
end

get "/course/new/:id" do
  @user = User.find(params[:id])
  erb :"backend/add_course"
end

post "/course/add/:id" do
  @user = User.find(params[:id])
  @course = Course.create({
    name: params[:name],
    description: params[:description],
    duration: params[:duration],
    price: params[:price].to_f
    })
  @payment = Payment.create({
    payment_date: Date.today,
    paid: true,
    course_id: @course.id,
    user_id: @user.id
    })
  redirect "/dashboard/#{@user.id}"
end

get "/course/:id" do
  @courses = User.find(params[:id]).courses
  # @course = User.find(params[:id]).courses
  # @course = Course.find(params[:id])
  # Project.where(team: Member.find(118).team)
  erb :"backend/course"
end

# 404 Error!
not_found do
	status 404
	erb :not_found
end
