class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :tag_path
      t.string :tag_text
      t.string :name
      t.text :body
      t.timestamps
    end
    add_index :jobs, :tag_path
    add_index :jobs, :tag_text
  end
end