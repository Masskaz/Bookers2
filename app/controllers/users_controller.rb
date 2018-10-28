class UsersController < ApplicationController

  before_action :authenticate_user!


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


	def update
		 	@user = User.find(params[:id])
		if	@user.update(user_params)
			flash[:notice] = "プロフィール編集が完了しました"
			redirect_to user_path(@user.id)
		else
			render :edit
		end
	end


private
	def user_params
		params.require(:user).permit(:name,:image,:itroduction)
	end

end
