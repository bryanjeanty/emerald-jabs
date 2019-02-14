class ForumController < ApplicationController
    def index

    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create!(params.require(:post).permit(:title, :content))
        @post.image.attach(params[:post][:image])
        redirect_to root_path
    end
    
    def show
        @post = Post.find(params[:id])
    end

    private
    def posts_params
        params.require(:post).permit(:title, :content, :image)
    end

    def attach_params
        params[:post][:image]
    end
end
