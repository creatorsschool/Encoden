helpers do
  def current_user
    User.find(1)
  end

  def all_courses
    User.find(1).courses
  end
end

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

get "/user/new/:id_user" do
  @user = User.find(params[:id_user])
  erb :"frontend/new_user"
end

post "/user/new/:id_user" do
  User.update(params[:id_user], params.slice("name"))
  redirect "/dashboard/#{params[:id_user]}"
end

get "/dashboard/:id_user" do
  @user = User.find(params[:id_user])
  erb :"backend/dashboard"
end

get "/user/edit/:id_user" do
  @user = User.find(params[:id_user])
  erb :"backend/edit_user"
end

post "/user/edit/:id_user" do
  User.update(params[:id_user], params.slice("name", "email"))
  redirect "/user/edit/#{params[:id_user]}"
end

get "/course/new/:id_user" do
  @user = User.find(params[:id_user])
  erb :"backend/add_course"
end

post "/course/add/:id_user" do
  @user = User.find(params[:id_user])
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


get "/course/show/:id_course" do
  @course = Course.find(params[:id_course])
  @chapters = Course.find(params[:id_course]).chapters
  # @course = User.find(params[:id]).courses
  # @course = Course.find(params[:id])
  # Project.where(team: Member.find(118).team)
  erb :"backend/course", locals: { x: 1 }
end

get "/course/edit/:id_course" do
  @course = Course.find(params[:id_course])
  erb :"backend/edit_course"
end

post "/course/edit/:id_course" do
  Course.update(params[:id_course], params.slice("name", "description", "duration", "price"))
  redirect "/course/edit/#{params[:id_course]}"
end

get '/chapter/add/:id' do
  @course = Course.find(params[:id])
  erb :"backend/add_chapter"
end

post '/chapter/add/:course_id' do
    @user = User.find(params[:course_id])
    @course = Course.find(params[:course_id])
    @chapter = Chapter.create({
    name: params[:chapter_name],
    description: params[:chapter_description],
    course_id: @course.id
    })
    redirect "/dashboard/#{@user.id}"
  end

# 404 Error!
not_found do
	status 404
	erb :not_found
end
