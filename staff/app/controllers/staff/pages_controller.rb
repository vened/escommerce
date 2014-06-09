module Staff
  class PagesController < ApplicationController
    before_action :authenticate_admin!
    before_action :set_page, only: [:show, :edit, :destroy]

    def dashboard
      # render :json => {'s' => 0}
    end

    def index
      @pages = Page.all.order(path: :asc)
      # @pages = Page.all.where(lang: 'ru')
      render :json => Oj.dump(@pages, mode: :compat)
    end

    def find_lang
      @page = Page.where(path: params[:id], lang: params[:lang]).take
      if @page.blank?
        @pageRu = Page.where(path: params[:id], lang: 'ru').take
        @page = Page.new(path: @pageRu.path, title: @pageRu.title, lang: 'en')
        @page.save
        render :json => Oj.dump(@page, mode: :compat)
      else
        render :json => Oj.dump(@page, mode: :compat)
      end
    end

    def show
      @page = Page.find(params[:id])
      render :json => Oj.dump(@page, mode: :compat)
    end

    def new
      @page = Page.new
    end

    def create
      @page = Page.new(page_params)
      if @page.save
        render :json => @page
      else
        render :json => @page.errors
      end
    end

    def update
      @page = Page.where(path: params[:id], lang: params[:lang]).take
      if @page.update(page_params)
        render :json => @page
      else
        render :json => @page.errors
      end
    end

    def destroy
      if @page.destroy
        @pages = Page.all
        render :json => {'d' => 1, "pages" => @pages}
      else
        render :json => {'d' => 0}
      end
    end

    private
    def set_page
      @page = Page.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:lang, :title, :path, :body)
    end


  end
end
