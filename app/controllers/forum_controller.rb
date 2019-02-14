class ForumController < ApplicationController
    
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(posts_params)
        if @post.save
            redirect_to root_path
        else
            redirect_to new_forum_path
        end
    end
    
    def show
        @post = Post.find(params[:id])
    end

    private
    def posts_params
        params.require(:post).permit(:title, :content, :image)
    end
end
