get "/posts" do
  @posts = Post.order("created_at DESC")
  redirect "/post/new" if @posts.empty?
  haml :"post/index", :layout => :layout
end
