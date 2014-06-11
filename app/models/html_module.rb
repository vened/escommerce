# encoding: utf-8
class HtmlModule < ActiveRecord::Base
  has_and_belongs_to_many :pages
  has_many :html_module_languages, :dependent => :destroy
end