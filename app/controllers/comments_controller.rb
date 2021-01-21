class CommentsController < ApplicationController

    def index
        comments = Comment.all

        render json: CommentSerializer.new(comments)
    end

    def create

        comment = Comment.new(comment_params)
        if comment.save
            render json: CommentSerializer.new(comment) 
        else
            render json: {errors: comment.errors.full_messages}
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
    end

    private

    def comment_params
            params.require(:comment).permit(:message, :sneaker_id)
        end
end
