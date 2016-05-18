get "/admin/users/new" do

  if is_logged_in
    haml :"admin/users/new", :layout => :layout
  else
    redirect "/"
  end

end

post "/admin/users/new" do
  user = User.create(params[:user])
  redirect "/admin/users"
end
