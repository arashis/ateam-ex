class BlogsController < ApplicationController
    def index
        @blogs = Blog.all.order("id DESC")
        @blog = Blog.new
    end

    def new
    end

    def create
        @blog = Blog.new(params[:blog].permit(:body))
        @blog.save
        redirect_to blogs_path
    end

    def show
        @blog = Blog.find(params[:id])
        @replies = Reply.where(blog_id: params[:id]).order("id DESC")
        @reply = Reply.new
    end

    def likeup
        @blog = Blog.find(params[:id])
        @blog[:like] += 1
        @blog.save
        redirect_to :back
    end
end
