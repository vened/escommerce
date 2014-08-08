module Staff
  class HtmlModulesController < ApplicationController
    # before_action :authenticate_admin!
    before_action :set_module, only: [:show, :edit, :destroy, :link, :unlink]

    def index
      @html_modules = HtmlModule.all.order(name: :asc)
      render :json => Oj.dump(@html_modules, mode: :compat)
    end

    def show
      @html_module_language = @html_module.html_module_languages.where(lang: params[:lang]).first
      @linked_pages = @html_module.pages
      @pages = Page.all - @linked_pages
      render :json => Oj.dump({:module => @html_module,
                               :html_module_language => @html_module_language,
                               :pages => @pages,
                               :linkedPages => @linked_pages}, mode: :compat)
    end


    def edit
      @html_module_language = @html_module.html_module_languages.where(lang: params[:lang]).first
      if @html_module_language.blank?
        @html_module_language = @html_module.html_module_languages.create!(lang: params[:lang], title: 'blank')
      end
      render :json => Oj.dump({:html_module => @html_module,
                               :html_module_language => @html_module_language}, mode: :compat)
    end


    def create
      @html_module = HtmlModule.new(module_params)
      if @html_module.save && @html_module.html_module_languages.create(html_module_language_params)
        render :json => Oj.dump(@html_module, mode: :compat)
      else
        render :json => @html_module.errors
      end
    end


    def update
      @html_module = HtmlModule.where(id: params[:html_module][:id]).take
      @html_module_language = @html_module.html_module_languages.where(lang: params[:html_module_language][:lang]).first
      if @html_module.update(module_params) && @html_module_language.update(html_module_language_params)
        render :json => Oj.dump(@html_module, mode: :compat)
      end
    end

    #def update
    #  @page = Page.where(id: params[:page][:id]).take
    #  @content = @page.contents.where(lang: params[:content][:lang]).first
    #  if @page.update(page_params) && @content.update(content_params)
    #    render :json => @page
    #  else
    #    render :json => @page.errors
    #  end
    #end



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

    def html_module_language_params
      params.require(:html_module_language).permit(:lang, :title, :body)
    end


  end
end
