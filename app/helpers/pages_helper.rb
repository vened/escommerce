module PagesHelper

  def module_to(modules, position)
    html = ""
    for mod in modules
      @html_module_language = mod.html_module_languages.where(lang: locale).first
      #html += mod.name == position ? "<h2>#{mod.title}</h2>" : ""
      #html += mod.name == position ? mod.body : ""
      html += mod.name == position ? @html_module_language.body : ""
    end
    html.html_safe
  end


end