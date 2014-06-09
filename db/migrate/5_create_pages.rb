class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :path
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