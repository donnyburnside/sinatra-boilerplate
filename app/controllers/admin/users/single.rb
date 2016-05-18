get "/admin/user/:id" do |id|

  # Get user
  @user = User.find(params[:id])
  halt 404 if @user == nil

  # Get view
  haml :"admin/users/single", :layout => :layout
end
