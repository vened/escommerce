module Staff
  class Admin < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable :registerable,
    devise :database_authenticatable, :rememberable, :trackable, :validatable
  end
end
