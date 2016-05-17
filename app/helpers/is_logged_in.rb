# A helper that detects if the user is logged in

helpers do
  def is_logged_in
    if session[:user_id]
      return true
    else
      return nil
    end
  end
end
