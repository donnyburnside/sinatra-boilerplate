get "/admin/user/:id/edit" do |id|

  # Get user
  @user = User.find(params[:id])
  halt 404 if @user == nil

  # Get view
  haml :"admin/users/edit", :layout => :layout
end

put "/admin/user/:id" do |id|
  user = User.find(params[:id])
  user.update(params[:user])
  # redirect "/admin/user/#{user.id}"
  redirect "/admin/users"
end
