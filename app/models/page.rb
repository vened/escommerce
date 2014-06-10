# encoding: utf-8
class Page < ActiveRecord::Base
  has_and_belongs_to_many :html_modules
  has_many :contents, :dependent => :destroy
  acts_as_nested_set
  
  before_update :rebuild_path

  validates :path,
            :uniqueness => true,
            :length => {:minimum => 1},
            :format => {:with => /\A[a-zA-Z0-9\-]+\z/, :json => "Допускается только латиница и/или цифры"}
  validates_associated :contents


  def to_param
    "#{path}"
  end
  
  def rebuild_path
    self.path = self_and_ancestors.pluck(:path).join("/")
  end

  def parent_path
    self_and_ancestors.pluck(:path).join("/")
  end

end