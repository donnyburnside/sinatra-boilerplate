get "/login" do
  if is_logged_in
    redirect "/admin"
  else
    haml :"login", :layout => :layout
  end
end

post "/login" do
  user = User.find_by(username: params[:user][:username]).try(:authenticate, params[:user][:password])

  if user
    session[:user_id] = user.id
    redirect("/admin")
  else
    redirect("/login")
  end
end
