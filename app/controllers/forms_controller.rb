class FormsController < ApplicationController

  def home
    @root = true
    @page = Page.where(path: 'home').take
    @modules = @page.html_modules
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
