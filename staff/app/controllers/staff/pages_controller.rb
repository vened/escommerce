module Staff
  class PagesController < ApplicationController
    before_action :authenticate_admin!
    before_action :set_page, only: [:show, :edit, :destroy]

    def dashboard
      # render :json => {'s' => 0}
    end


    def index
      @pages = Page.all.order(path: :asc)
      render :json => Oj.dump(@pages, mode: :compat)
    end


    def show
      @page = Page.find(params[:id])
      @content = @page.contents.where(lang: params[:lang]).first
      render :json => Oj.dump({page: @page, content: @content}, mode: :compat)
    end


    def edit
      @page = Page.find(params[:id])
      @content = @page.contents.where(lang: params[:lang]).first
      if @content.blank?
        @content = @page.contents.create!(lang: params[:lang], title: 'blank')
      end
      render :json => Oj.dump({page: @page, content: @content}, mode: :compat)
    end


    def new
      @page = Page.new
    end


    def create
      @page = Page.new(page_params)
      if @page.save && @page.contents.create!(content_params)
        render :json => @page
      else
        render :json => {page: @page.errors, cont: @page.contents.errors}
      end
    end


    def update
      @page = Page.where(id: params[:page][:id]).take
      @content = @page.contents.where(lang: params[:content][:lang]).first
      if @page.update(page_params) && @content.update(content_params)
        render :json => @page
      else
        render :json => @page.errors
      end
      #render :json => params
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
      params.require(:page).permit(:path, :name)
    end

    def content_params
      params.require(:content).permit(:lang, :title, :body)
    end


  end
end
