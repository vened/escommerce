class CreateHtmlModulesAndPages < ActiveRecord::Migration
  def change
    create_table :html_modules_pages, id: false do |t|
      t.belongs_to :html_module
      t.belongs_to :page
    end
    add_index :html_modules_pages, :html_module_id
    add_index :html_modules_pages, :page_id
  end
end