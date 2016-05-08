get "/users/new" do
  haml :"users/new", :layout => :layout
end

post "/users/new" do
  @user = User.new(params[:user])
  if @user.save
    # redirect "/user/#{@user.id}"
    redirect "/users"
  else
    haml :"users/new", :layout => :layout
  end
end
