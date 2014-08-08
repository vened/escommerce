module Staff
  class UsersController < ApplicationController
    # before_action :authenticate_admin!
    before_action :set_user, only: [:show, :edit, :destroy, :update]

    def index
      @users = User.all
      render :json => Oj.dump(@users, mode: :compat)
    end
    
    def show
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

    def destroy
      if @user.destroy
        render :json => {'d' => 1}
      else
        render :json => {'d' => 0}
      end
    end

    def edit
    end

    def update
      @user = User.find(params[:id])
      json_parms = user_params
      json_parms[:password] = params[:password]
      json_parms[:password_confirmation] = params[:password_confirmation]
      if @user.update_attributes(json_parms)
        render :json => Oj.dump({errors: @user}, mode: :compat)
      else
        render :json => Oj.dump({errors: @user.errors}, mode: :compat)
      end
    end
    

    private
    def set_user
      @user = User.find(params[:id])
    end
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end


  end
end
