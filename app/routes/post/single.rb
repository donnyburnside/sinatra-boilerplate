get '/post/:id' do
  @post = Post.find(params[:id])
  haml :"post/single", :layout => :layout
end
