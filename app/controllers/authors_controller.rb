class AuthorsController < ApplicationController
  
  def show
    @author = Author.find(params[:id])
  end
  
  def posts_index
    @author = Author.find(params[:id])
    @posts = @author.posts
    render "posts/index"
  end
  
  def post
    @author = Author.find(params[:id])
    @post = Post.find(params[:post_id])
    render "posts/show"
  end
  
end
