post "/post" do
  titulo = params[:titulo]
  contenido = params[:body]
  autor = params[:autor]
  tags = params[:tags].split(",").uniq

  autor = "anonimo" unless Post.hasautor?(autor)
  
  post = Post.new(title: titulo, body: contenido, author: autor)

  # Create tags
  Tag.tags_exists?(tags)

  if post.save
    p @new_post = Post.find_by(title: titulo)
    p @new_post.tags

    tags.each do |t| 
      @new_post.tags << Tag.find_by(name: t)
    end

      @id = @new_post.id

    redirect to("/post/#{@id}")
  else
    @posts = Post.all
    @tags = Tag.all
    @error = 1
    erb :index
  end

end

get '/post/:id' do
  @id = params[:id]
  @post = Post.find(@id)
  erb :show_post
end

get '/post/:id/edit' do

  @id = params[:id] 
  @post = Post.find(@id)
  @tags = @post.tags
  erb :edit_post

end

post '/post/:id/edit' do

  id = params[:id]
  titulo = params[:titulo]
  contenido = params[:body]
  new_tags = params[:tags].split(",")
  autor = params[:autor]
  post =  Post.find(id)
  tags = post.tags

  tags.each do |t|  
    new_tags.each do |n|
      new_tags.delete(n) if t.name == n
    end
  end

  # Create tags
  Tag.tags_exists?(new_tags)

  if post.update(title: titulo, body: contenido, author: autor)
    new_tags.each do |t| 
      tags << Tag.find_by(name: t)
    end

    redirect to("/post/#{id}")

  else
    @id = params[:id] 
    @post = Post.find(@id)
    @tags = @post.tags
    @error = 1

    erb :edit_post
    
  end

end

get "/post/:id/delete" do
  id = params[:id]
  post = Post.find(id) 
  post.destroy
  redirect to("/")
end

















