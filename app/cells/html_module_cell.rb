class HtmlModuleCell < Cell::Rails

  def show(arg)
    @page = arg[:page]
    #logger.info @page.methods
    @html_modules = @page.html_modules
    render
  end

end
