get '/post/:id' do
  @post = Post.find(params[:id])
  haml :"posts/single", :layout => :layout
end
