module Staff
  class JobsController < ApplicationController
    before_action :authenticate_admin!
    #before_action :set_page, only: [:show, :edit, :destroy]

    def index
      @jobs = Job.all
      render :json => Oj.dump(@jobs, mode: :compat)
    end

    #def show
    #  @page = Page.find(params[:id])
    #  @content = @page.contents.where(lang: params[:lang]).first
    #  render :json => Oj.dump({page: @page, content: @content}, mode: :compat)
    #end
    #
    #def edit
    #  @page = Page.find(params[:id])
    #  @content = @page.contents.where(lang: params[:lang]).first
    #  @pages = Page.all
    #  if @content.blank?
    #    @content = @page.contents.create!(lang: params[:lang], title: 'blank')
    #  end
    #  render :json => Oj.dump({page: @page, content: @content, pages: @pages}, mode: :compat)
    #end
    #
    #def new
    #  @pages = Page.all
    #  render :json => Oj.dump({pages: @pages}, mode: :compat)
    #end
    #
    def create
      @job = Job.new(job_params)
      if @job.save
        render :json => @job
      else
        render :json => @job.errors
      end
    end
    #
    #def update
    #  @page = Page.where(id: params[:page][:id]).take
    #  @content = @page.contents.where(lang: params[:content][:lang]).first
    #  if @page.update(page_params) && @content.update(content_params)
    #    render :json => @page
    #  else
    #    render :json => @page.errors
    #  end
    #end
    #
    #
    #def destroy
    #  if @page.destroy
    #    @pages = Page.all
    #    render :json => {'d' => 1, "pages" => @pages}
    #  else
    #    render :json => {'d' => 0}
    #  end
    #end

    #private
    #def set_page
    #  @page = Page.find(params[:id])
    #end
    #
    def job_params
      params.require(:job).permit(:tag_path, :tag_text, :name, :body)
    end

  end
end