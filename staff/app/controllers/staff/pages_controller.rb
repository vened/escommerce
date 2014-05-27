module Staff
  class PagesController < ApplicationController

    def show
      @pages = Page.all
    end

  end
end
