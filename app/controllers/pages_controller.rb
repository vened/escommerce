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

  def show
    @modules = @page.html_modules
  end


  private
  def set_page
    @page = Page.find_by_path(params[:id])
  end

end
