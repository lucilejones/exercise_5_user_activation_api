class PostsController < ApplicationController
    # before_action :set_user, only: [:create]

    def index
        posts = Post.all

        render json: posts, status: :ok
    end

    def create
        user = User.find(params[:user_id])
        
        if user.active == true       
            post = Post.create(post_params)
            
            render json: post, status: :created
        elsif user.active == false

            render json: user.errors, status: :unprocessable_entity
        end
    
        # if user.save
        #     render json: post, status: :created
        # else
        #     render json: post.errors, status: :unprocessable_entity
        # end
    end

    private

    # def set_user
    #     @user = User.find(params[:user_id])
    # end

    def post_params
        params.require(:post).permit(:title, :content, :user_id)
    end
end
