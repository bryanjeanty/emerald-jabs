class PostsController < ApplicationController
    def index
        @posts = Post.all.order(:id)
    end

    def new
        @post = Post.new
    end

    def create
        @post = current_user.posts.create!(params.require(:post).permit(:title, :content))
        @post.image.attach(params[:post][:image])
        redirect_to root_path
    end
    
    def show
        @post = Post.find(params[:id])
    end

    def edit
        @user = User.find(params[:user_id])
        @post = @user.posts.find(params[:id])
    end

    def update
        @user = User.find(params[:user_id])
        @post = @user.posts.find(params[:id])
        if params[:post][:image].nil?
            @post.update(params.require(:post).permit(:title, :content))
        else
            @post.image.attach(params[:post][:image])
            @post.update(params.require(:post).permit(:title, :content))
        end
        redirect_to root_path
        # if @post
        #     redirect_to root_path
        # else
        #     redirect_to edit_user_post(@user, @post)
        # end
    end

    def destroy
        @user = User.find(params[:user_id])
        @post = @user.posts.find(params[:id])
        @post.destroy
        redirect_to root_path
    end

    private
    def posts_params
        params.require(:post).permit(:title, :content, :image)
    end

    def attach_params
        params[:post][:image]
    end
end
