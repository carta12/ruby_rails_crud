class PostController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def create
        @title = params[:title]
        @content = params[:content]
        
        Post.create(
            title: @title,
            content: @content
            )
        redirect_to '/'
    end
    
    def destroy
        @id = params[:id]
        post = Post.find(@id)
        # 지우려는 글을 찾는다
        post.destroy
        # 해당 글을 삭제한다.
        
        redirect_to('/')
    end
    
    def show
        id = params[:id]
        @post = Post.find(id)
        
    end
    
    def modify
         id = params[:id]
        @post = Post.find(id)
    end
    
    def update
        @id = params[:id]
        @title = params[:title]
        @content = params[:content]
        
        post = Post.find(@id)
        # post.title = @title
        # post.content = @content
        # post.save
        
        post.update(
            title: @title,
            content: @content
            )
            
        redirect_to '/'
    end
    
end
