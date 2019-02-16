class CommentsController < ApplicationController

    def create
        if params[:comment][:image].nil?
            @post = Post.find(params[:post_id])
            @comment = @post.comments.create(params.require(:comment).permit(:title, :content, :user_id))
        else
            @post = Post.find(params[:post_id])
            @comment.image.attach(params[:comment][:image])
            @comment = @post.comments.create(params.require(:comment).permit(:title, :content, :user_id))
        end
        redirect_to user_post_path(@post.user, @post)
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to user_post_path(@post.user, @post)
    end
end
