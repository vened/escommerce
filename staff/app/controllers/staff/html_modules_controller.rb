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
      render :json => Oj.dump(@html_module, mode: :compat)
    end

    def update 
      params[:_json].each do |param|
        logger.info "info params \n #{param[:id]}"
        # @html_module.pages << param
        @page = Page.find(param[:id])
        @html_module = HtmlModule.find(params[:id])
        @page.html_modules << @html_module
        # @html_module.update
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
