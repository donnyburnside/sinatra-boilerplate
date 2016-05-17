# A helper that gets the current user

helpers do
  def current_user
    if session[:user_id]
      return User.find(session[:user_id])
    else
      return nil
    end
  end
end
