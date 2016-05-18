get "/logout" do
  if is_logged_in
    session[:user_id] = nil
    redirect "/"
  else
    redirect "/"
  end
end
