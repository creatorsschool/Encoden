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
  erb :"backend/dashboard", :layout => :layout_admin
end

get "/user/edit/:id_user" do
  @user = User.find(params[:id_user])
  erb :"backend/edit_user", :layout => :layout_admin
end

post "/user/edit/:id_user" do
  User.update(params[:id_user], params.slice("name", "email"))
  redirect "/user/edit/#{params[:id_user]}"
end

get "/course/new/:id_user" do
  @user = User.find(params[:id_user])
  erb :"backend/add_course", :layout => :layout_admin
end

post "/course/add/:id_user" do
  @user = User.find(params[:id_user])
  @course = Course.create({
    name: params[:name],
    description: params[:description],
    duration: params[:duration],
    price: params[:price].to_f,
    user_id: params[:id_user]
    })

  redirect "/dashboard/#{@user.id}"
end


get "/course/show/:id_course" do
  @course = Course.find(params[:id_course])
  @chapters = Course.find(params[:id_course]).chapters
  erb :"backend/course", locals: { x: 1 }, :layout => :layout_admin
end

get "/course/edit/:id_course" do
  @course = Course.find(params[:id_course])
  erb :"backend/edit_course", :layout => :layout_admin
end

post "/course/edit/:id_course" do
  Course.update(params[:id_course], params.slice("name", "description", "duration", "price"))
  redirect "/course/edit/#{params[:id_course]}"
end

get '/chapter/add/:id' do
  @course = Course.find(params[:id])
  erb :"backend/add_chapter", :layout => :layout_admin
end

post '/chapter/add/:course_id' do
    @course = Course.find(params[:course_id])
    @chapter = Chapter.create({
    name: params[:chapter_name],
    description: params[:chapter_description],
    course_id: @course.id
    })
    redirect "/dashboard/#{current_user.id}"
  end


get '/chapter/edit/:id_course' do
  @course = Course.find(params[:id_course])
  @chapters = Course.find(params[:id_course]).chapters
  erb :"backend/edit_chapter", :layout => :layout_admin
end

post '/chapter/edit/:id_course/:id_chapter' do
  Chapter.update(params[:id_chapter], params.slice("name", "description"))
  redirect "/course/show/#{params[:id_course]}"
end

  get '/chapter/delete/:chapter_id' do
    @course = Chapter.find(params[:chapter_id]).course_id
    Chapter.destroy(params[:chapter_id])
    redirect "/course/show/#{@course}"
  end


# 404 Error!
not_found do
	status 404
	erb :not_found
end
