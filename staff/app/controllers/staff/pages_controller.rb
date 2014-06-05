module Staff
  class PagesController < ApplicationController
    before_action :authenticate_admin!
    before_action :set_page, only: [:show, :edit, :update, :destroy]

    def dashboard
      # render :json => {'s' => 0}
    end

    def index
      @pages = Page.all
      render :json => Oj.dump(@pages, mode: :compat)
    end

    def show
      @page = Page.find(params[:id])
      render :json => Oj.dump(@page, mode: :compat)
    end

    def new
      @page = Page.new
    end

    def edit
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
      @page = Page.find(params[:id])
      @html_module = HtmlModule.find(2)
      @page.html_modules << @html_module
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
      params.require(:page).permit(:title, :path, :body)
    end


  end
end
