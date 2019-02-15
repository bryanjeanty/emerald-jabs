class CommentsController < ApplicationController

    def create
        if params[:comment][:image].nil?
            @post = Post.find(params[:post_id])
            @comment = @post.comments.create(
                params.require(:comment).permit(:title, :content, :user_id)
                # title: params[:comment][:title],
                # content: params[:comment][:content],
                # user_id: current_user.id
                )
        else
            @post = Post.find(params[:post_id])
            @comment.image.attach(params[:comment][:image])
            @comment = @post.comments.create(
                # params.require(:comment).permit(:title, :content),
                title: params[:title],
                content: params[:content],
                user_id: current_user.id
                )
        end
        redirect_to user_post_path(@post.user, @post)
    end
end
