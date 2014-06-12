class PagesController < ApplicationController
  before_action :set_page, only: [:index, :show, :job]
  before_action :set_jobs, only: [:job, :job_tag, :job_show]

  def index
    #if params[:locale]
    #  curent_lang = params[:locale]
    #else
    #  curent_lang = locale
    #end
    #logger.info "locale ------------------------- #{curent_lang}"
    @pages = Page.all.where(lang: I18n.locale)
  end


  def home
    @page = Page.where(path: 'home').take
    @modules = @page.html_modules
  end


  def show
    if @page
      @content = @page.contents.find_by(lang: locale)
    end
    @modules = @page.html_modules
    @children = @page.children
  end


  def job
  end


  def job_tag
    @current_jobs = Job.where(tag_path: params[:tag_path])
  end


  def job_show
    @current_job = Job.find(params[:id])
  end


  private
  def set_page
    @page = Page.find_by_path(params[:id])
  end

  def set_jobs
    @jobs = Job.select(:tag_text, :tag_path).distinct
    @page = Page.find_by_path("jobs")
    if @page
      @content = @page.contents.find_by(lang: locale)
    end
    @modules = @page.html_modules
  end

end
