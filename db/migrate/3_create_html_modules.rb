class CreateHtmlModules < ActiveRecord::Migration
  def change
    create_table (:html_modules) do |t|
      t.string :name
      t.string :lang
      t.string :title
      t.text :body
    end
    add_index :html_modules, :name
    add_index :html_modules, :lang
  end
end