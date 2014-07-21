class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :vacancy
      t.string :username
      t.string :birth
      t.string :phone
      t.string :email
      t.string :education
      t.string :referencer
      t.string :file
      t.string :photo
      t.text :text1
      t.text :text2
      t.text :text3
      t.text :text4
      t.timestamps
    end
  end
end