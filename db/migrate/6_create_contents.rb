class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|

      t.belongs_to :page
      t.string :lang
      t.string :title
      t.text :body
    end
    add_index :contents, :page_id
  end
end