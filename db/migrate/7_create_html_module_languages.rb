class CreateHtmlModuleLanguages < ActiveRecord::Migration
  def change
    create_table :html_module_languages do |t|

      t.belongs_to :html_module
      t.string :lang
      t.string :title
      t.text :body
    end
    add_index :html_module_languages, :html_module_id
  end
end