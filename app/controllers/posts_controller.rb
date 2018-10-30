class PostsController < ApplicationController

before_action :authenticate_user!
 before_action :post_up_edit ,only:[:edit]

  def post_up_edit
  	@post = Post.find(params[:id])
  	if @post.user != current_user
		redirect_to posts_path
  	end
  end


def show
	@post_new = Post.new
	@post = Post.find(params[:id])
	@user = @post.user
end

def index
	@post = Post.new
	@user = User.find(current_user.id)
	@posts = Post.all

end

def create
	@post = Post.new(post_params)
	@post.user_id = current_user.id
	if @post.save
		flash[:notice] = "successfully"
		redirect_to post_path(@post.id)
	else
		@user=current_user
		@posts=Post.all
		@users=User.all
		render 'posts/index'
	end
end

def edit
	@post = Post.find(params[:id])
end

def update
	@post = Post.find(params[:id])
	@post.update(post_params)
	flash[:notice] = "successfully"
	redirect_to post_path(@post.id)
end

def destroy
	post = Post.find(params[:id])
	post.destroy
	redirect_to posts_path
end

private
    def post_params
        params.require(:post).permit(:title, :opinion)
    end
end

