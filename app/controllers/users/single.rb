get "/user/:id" do |id|

  # Get user
  @user = User.find_by(:id => id.to_i)
  halt 404 if @user == nil

  # Get view
  haml :"users/single", :layout => :layout
end
