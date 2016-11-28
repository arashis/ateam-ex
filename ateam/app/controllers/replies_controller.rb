class RepliesController < ApplicationController
    def create
        p "=================================="
        # @blog = Reply.new(params[:reply].permit(:comment))
        # @blog.save
        # redirect_to :back

        @blog = Blog.find(params[:blog_id])
        @reply = @blog.replies.create(params[:reply].permit(:comment))
        redirect_to blog_path(@blog.id)
    end
end
