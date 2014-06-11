# encoding: utf-8
class Page < ActiveRecord::Base
  has_and_belongs_to_many :html_modules
  has_many :contents, :dependent => :destroy
  acts_as_nested_set

  before_update :rebuild_slug

  validates :path,
            :uniqueness => true,
            :length => {:minimum => 1},
            :format => {:with => /\A[a-zA-Z0-9\-]+\z/, :json => "Допускается только латиница и/или цифры"}
  validates_associated :contents


  def to_param
    "#{path}"
  end

  def set_page(params)
    if params[:parent_id]
      @root = Page.find(params[:parent_id]).slug
      self.slug = "#{@root}/#{params[:path]}"
    else
      self.slug = "#{params[:path]}"
    end
  end

  def rebuild_slug
    self.slug = self_and_ancestors.pluck(:path).join("/")
  end

  def parent_path
    self_and_ancestors.pluck(:path).join("/")
  end

end