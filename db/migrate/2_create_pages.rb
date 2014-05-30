class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|

      t.string :title
      t.string :path
      t.text :body
      
      t.string :meta_key
      t.string :meta_desc

      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth # this is optional.

      t.timestamps
    end
    add_index :pages, :path
    add_index :pages, :parent_id
    add_index :pages, :lft
    add_index :pages, :rgt
  end
end