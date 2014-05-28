module Staff
  class PagesController < ApplicationController

    def dashboard
    end
    
    def index
      @pages = Page.all
      render :json => @pages
    end

  end
end
