module Staff
  class HtmlModulesController < ApplicationController
    before_action :authenticate_admin!
    before_action :set_module, only: [:show, :update, :destroy, :link, :unlink]

    def index
      @html_modules = HtmlModule.all
      render :json => Oj.dump(@html_modules, mode: :compat)
    end

    def show
      @linked_pages = @html_module.pages
      @pages = Page.all - @linked_pages
      render :json => Oj.dump({:module => @html_module, :pages => @pages, :linkedPages => @linked_pages}, mode: :compat)
    end

    def update
      if @html_module.update(params)
        render :json => Oj.dump(@html_module, mode: :compat)
      end
    end

    def destroy
      if @html_module.destroy
        render :json => {'s' => 1}
      else
        render :json => {'s' => 0}
      end
    end


    def link
      @page = Page.find(params[:page_id])
      if @page.html_modules << @html_module
        @linked_pages = @html_module.pages
        @pages = Page.all - @linked_pages
        render :json => Oj.dump({:pages => @pages, :linkedPages => @linked_pages}, mode: :compat)
      end
    end


    def unlink
      @page = Page.find(params[:page_id])
      if @page.html_modules.delete(@html_module)
        @linked_pages = @html_module.pages
        @pages = Page.all - @linked_pages
        render :json => Oj.dump({:pages => @pages, :linkedPages => @linked_pages}, mode: :compat)
      end
    end


    private
    def set_module
      @html_module = HtmlModule.find(params[:id])
    end

    def module_params
      params.require(:html_module).permit(:title, :name, :body)
    end


  end
end
