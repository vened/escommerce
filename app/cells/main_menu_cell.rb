class MainMenuCell < Cell::Rails

  def show
    @pages = Page.all.order(created_at: :asc).where("path != 'home'")
    render
  end

end
