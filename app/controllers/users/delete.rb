delete "/users/:id" do |id|

  # Get and destroy user
  user = User.find_by(:id => id.to_i).destroy
  halt 404 if user == nil

end
