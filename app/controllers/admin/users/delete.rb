delete "/admin/user/:id" do |id|
  user = User.find(params[:id])
  user.destroy
  redirect "/admin/users"
end
