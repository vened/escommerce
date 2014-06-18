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
    @root = true
    @page = Page.where(path: 'home').take
    @modules = @page.html_modules
  end


  def show
    @home = Page.where(path: 'home').take
    if @page
      @content = @page.contents.find_by(lang: locale)
    end
    @modules = @page.html_modules
    if @page.depth > 0
      @children = @page.self_and_siblings
    else
      @children = @page.children
    end
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
    @home = Page.where(path: 'home').take
    @jobs = Job.select(:tag_text, :tag_path).distinct
    @page = Page.find_by_path("jobs")
    if @page
      @content = @page.contents.find_by(lang: locale)
    end
    @modules = @page.html_modules
  end

end
