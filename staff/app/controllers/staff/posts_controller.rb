module Staff
  class PostsController < ApplicationController
    before_action :authenticate_admin!
    before_action :set_post, only: [:show, :destroy, :update]

    def index
      @posts = Post.all
      render :json => Oj.dump(@posts, mode: :compat)
    end

    def show
      render :json => Oj.dump(@job, mode: :compat)
    end

    def create
      @post = Post.new(post_params)
      if @post.save
        render :json => Oj.dump(@post, mode: :compat)
      else
        render :json => Oj.dump(@post.errors, mode: :compat)
      end
    end


    def update
      if @job.update(job_params)
        render :json => @job
      else
        render :json => @job.errors
      end
    end


    def destroy
      if @job.destroy
        render :json => {'d' => 1}
      else
        render :json => {'d' => 0}
      end
    end


    private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :photo, :body)
    end

  end
end
