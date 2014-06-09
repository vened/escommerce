class PagesController < ApplicationController
  before_action :set_page, only: [:index, :show]
  before_action :set_page, only: [:show]

  def index
    if params[:locale]
      curent_lang = params[:locale]
    else
      curent_lang = locale
    end
    logger.info "locale ------------------------- #{curent_lang}"
    @pages = Page.all.where(lang: curent_lang)
  end

  def dr
    @page = Page.first
    @cont = @page.contents.create(title: "qqeqwe", body: "asdcxsadx")
    render :json => {s: @page, c: @cont}
  end


  def home
    if params[:locale]
      curent_lang = params[:locale]
    else
      curent_lang = locale
    end
    # @page = Page.find(path: 'home')
    @page = Page.where(path: 'home', lang: curent_lang).take
    @modules = @page.html_modules
  end


  def show
    @modules = @page.html_modules
  end


  private
  def set_page
    @page = Page.find_by_path(params[:id])
  end

end
