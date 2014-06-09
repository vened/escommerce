# encoding: utf-8
class Content < ActiveRecord::Base
  belongs_to :page

  validates :lang, :length => {:minimum => 2}
  validates :title, :length => {:minimum => 1}
end