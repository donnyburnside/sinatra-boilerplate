get "/admin" do
  if is_logged_in
    haml :"admin/index", :layout => :layout
  else
    redirect "/"
  end
end
