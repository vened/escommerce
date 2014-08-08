module Staff
  class JobsController < ApplicationController
    # before_action :authenticate_admin!
    before_action :set_job, only: [:show, :destroy, :update]

    def index
      @jobs = Job.all.order(tag_path: :asc)
      render :json => Oj.dump(@jobs, mode: :compat)
    end

    def show
      render :json => Oj.dump(@job, mode: :compat)
    end

    def create
      @job = Job.new(job_params)
      if @job.save
        render :json => @job
      else
        render :json => @job.errors
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

    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:tag_path, :tag_text, :name, :body)
    end

  end
end
