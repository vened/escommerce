# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do |i|
  Page.create(title: "Page #{i}",
              path: "page-#{i}",
              body: "This file should contain all the record creation needed to seed the database with its default values."
  )
  HtmlModule.create(title: "Module #{i}",
                    name: "module-#{i}",
                    body: "Module body"
  )
end


@page = Page.last(1)
@html_module = HtmlModule.last(1)
@html_module.pages = @html_module