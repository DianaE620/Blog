post "/tag" do
  @tag = params[:tag]
  redirect to("/tag/#{@tag}")
end

get "/tag/:tag" do
  @tag = params[:tag]

  db_tag = Tag.find_by(name: @tag)

  if db_tag == nil
    @posts = []
  else
    @posts = db_tag.posts 
  end 
  erb :show_tags
end