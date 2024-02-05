class PostsController < ApplicationController
    def create
        user = User.find(params[:user_id])
        
        post = Post.new(post_params)
    
        if user.active = true
            render json: post, status: :created
        else
            render json: post.errors, status: :unprocessable_entity
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :user)
    end
end
