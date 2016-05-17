get "/users/new" do

  if is_logged_in
    haml :"users/new", :layout => :layout
  else
    redirect "/"
  end

end

post "/users/new" do
  user = User.new(params[:user])

  if user.save
    # redirect "/user/#{@user.id}"

    # Log the new user in (for signup)
    #session[:user_id] = user.id

    redirect "/users"
  else
    # session[:user_id] = nil
    redirect "/users/new"
  end
end
