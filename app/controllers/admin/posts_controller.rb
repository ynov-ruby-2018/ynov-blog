class Admin::PostsController < Admin::AdminController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to admin_posts_path
    else
      render template: '/admin/posts/new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
      redirect_to admin_posts_path
    else
      render template: '/admin/posts/edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to admin_posts_path
  end

  private

  def post_params
    params.require(:post).permit(
      :title, 
      :content,
      :category_id,
      :picture,
       {tag_ids: []} 
    ).merge(user_id: current_user.id)
  end
end
