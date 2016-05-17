get "/login" do
  haml :"login", :layout => :layout
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
