class MainMenuCell < Cell::Rails

  def show
    @pages = Page.all.order(created_at: :asc).where("path != 'home'").where("depth = '0'")
    render
  end

end
