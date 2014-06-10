# encoding: utf-8
class Page < ActiveRecord::Base
  has_and_belongs_to_many :html_modules
  has_many :contents, :dependent => :destroy
  acts_as_nested_set

  validates :path,
            :uniqueness => true,
            :length => {:minimum => 1},
            :format => {:with => /\A[a-zA-Z0-9\-]+\z/, :json => "Допускается только латиница и/или цифры"}
  validates_associated :contents

  def parent_path
    self_and_ancestors.pluck(:path).join("/")
    logger.info "-----------------------#{self_and_ancestors.pluck(:path).join("/")}"
  end

  def to_param
    "#{parent_path}"
  end

  #def before_save(record)
  #self.title = ActiveSupport::JSON.encode(page_params[:title])
  #record.title = ActiveSupport::JSON.encode({:p => 123, :r => 3543})
  #end


end