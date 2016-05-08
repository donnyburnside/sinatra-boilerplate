get "/users" do

  # Get all users
  @users = User.all
  halt 404 if @users == nil

  # Get view
  haml :"users/index", :layout => :layout

end
