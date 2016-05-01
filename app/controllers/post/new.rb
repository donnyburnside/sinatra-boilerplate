get "/posts/new" do
  haml :"post/new", :layout => :layout
end

post "/posts/new" do
  @post = Post.new(params[:post])
  if @post.save
    redirect "/post/#{@post.id}"
  else
    haml :"post/new", :layout => :layout
  end
end
