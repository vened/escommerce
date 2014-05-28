module Staff
  class PagesController < ApplicationController
    before_action :set_page, only: [:show, :edit, :update, :destroy]

    def dashboard
    end

    def index
      @pages = Page.all
      render :json => @pages
    end

    def show
      @page = Page.find(params[:id])
      render :json => @page
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

    def destroy
      @page.destroy
      respond_to do |format|
        format.json { head :no_content }
      end
    end

    private
    def set_page
      @page = Page.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:title)
    end


  end
end
