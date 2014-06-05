module Staff
  class HtmlModulesController < ApplicationController
    before_action :authenticate_admin!
    #before_action :set_module, only: [:show, :update]

    def index
      @html_modules = HtmlModule.all
      render :json => Oj.dump(@html_modules, mode: :compat)
    end

    def show
      @html_module = HtmlModule.find(params[:id])
      @html_pages = @html_module.pages
      logger.info @html_pages
      render :json => Oj.dump({:module => @html_module, :pages => @html_pages}, mode: :compat)
    end

    def update
      params[:_json].each do |param|
        @page = Page.find(param[:id])
        @html_module = HtmlModule.find(params[:id])
        unless @page.html_modules.exists?(@html_module)
          @page.html_modules << @html_module
        end
      end
      #@html_module.pages << @page
      # if @html_module.update(params)
      #   render :json => @page
      # else
      #   render :json => @page.errors
      # end
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
