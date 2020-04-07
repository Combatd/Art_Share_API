class CommentsController < ApplicationController
    def index

    end
    
    def create

    end

    def destroy

    end

    private
    def comments_params
        params.require(:comment).permit(:user_id, :comment_body, :artwork_id)
    end
end