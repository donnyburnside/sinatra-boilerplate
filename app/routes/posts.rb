get "/posts" do
  @posts = Post.order("created_at DESC")
  redirect "/posts/new" if @posts.empty?
  haml :"posts", :layout => :layout
end
