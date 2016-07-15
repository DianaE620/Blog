get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @posts = Post.all
  @tags = Tag.all
  # p @posts[0].tags[0].name

  erb :index
end

