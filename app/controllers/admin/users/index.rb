get "/admin/users" do

  if is_logged_in
    # Get all users
    @users = User.all
    halt 404 if @users == nil

    # Get view
    haml :"admin/users/index", :layout => :layout
  else
    redirect "/"
  end

end
