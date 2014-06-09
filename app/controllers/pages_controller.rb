class PagesController < ApplicationController
  before_action :set_page, only: [:index, :show]
  before_action :set_page, only: [:show]

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
    if params[:locale]
      curent_lang = params[:locale]
    else
      curent_lang = locale
    end
    # @page = Page.find(path: 'home')
    @page = Page.where(path: 'home').take
    @modules = @page.html_modules
  end


  def show
    @content = @page.contents.find_by(lang: locale)
    @modules = @page.html_modules
  end


  private
  def set_page
    @page = Page.find_by_path(params[:id])
  end

end
