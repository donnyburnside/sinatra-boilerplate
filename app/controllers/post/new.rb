get "/post/new" do
  haml :"post/index", :layout => :layout
end

post "/post/new" do
  @post = Post.new(params[:post])
  if @post.save
    redirect "/post/#{@post.id}"
  else
    haml :"post/index", :layout => :layout
  end
end
