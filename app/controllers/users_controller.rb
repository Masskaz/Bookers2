class UsersController < ApplicationController

	def show
		@post = Post.new
		@user = User.find(params[:id])
		@posts = @user.posts
	end

	def index
		@post = Post.new
		@user = User.find(current_user.id)
		@users = User.all
	end

	def edit
		@user = User.find(params[:id])
	end

	def create
		@user = User.find(params[:id])
		post.save
	end

	def update
		@user=User.find(params[:id])
		@user.update(user_params)
		redirect_to user_path(@user.id)
	end
end

private
	def user_params
		params.require(:user).permit(:name,:image,:itroduction)
	end
