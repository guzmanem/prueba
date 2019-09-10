class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post=Post.new
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])

        if(@post.update(params.require(:post).permit(:title, :body)))
            redirect_to request.base_url+'/posts'
        else
            render 'edit'
        end
    end

    def create
        # render plain: params[:post].inspect
        @post = Post.new(params.require(:post).permit(:title, :body))

        if(@post.save)
            redirect_to request.base_url+'/posts'
        else
            render 'new'
        end
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to posts_path
    end
    
end
