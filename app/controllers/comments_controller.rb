class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :update, :destroy]

    def index
        comments = Comment.all

        render json: CommentSerializer.new(comments)
    end

    def show

        render json: comment
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: CommentSerializer.new(comment)            
        else
            render json: {errors: comment.errors.full_messages}
        end
    end

    def update
        comment.update(comment_params)

        render json: comment
    end

    def destroy
        comment.delete

        render json: {commentId: comment.id}
    end

    private
        def set_comment
            comment = Comment.find(params[:id])
        end

        def comment_params
            params.require(:comment).permit(:size, :comment, :sneaker_id)
        end
end
