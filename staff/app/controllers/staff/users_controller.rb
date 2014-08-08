module Staff
  class UsersController < ApplicationController
    # before_action :authenticate_admin!
    # before_action :set_page, only: [:show, :edit, :destroy]

    def index
      @users = User.all
      render :json => Oj.dump(@users, mode: :compat)
    end


    def new
      @user = User.new
      render :json => Oj.dump(@user, mode: :compat)
    end


    def create
      json_parms = user_params
      json_parms[:password] = params[:password]
      json_parms[:password_confirmation] = params[:password_confirmation]
      @user = User.new(json_parms)
      if @user.save
        render :json => Oj.dump(@user, mode: :compat)
      else
        render :json => Oj.dump({errors: @user.errors}, mode: :compat)
      end
    end


    private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end


  end
end
