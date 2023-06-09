class UsersController < ApplicationController

    def create
        @user=User.create(user_params)
        if @user.valid?
            token=encode_token({user_id: @user.id})
            render json: {user: @user ,token: token} ,status: :Ok
        else
            render json: {error: "Invalid Username or password"} , status: :unprocessable_entity
        end

            
    end


    private
    def user_params
        params.require(:user).permit(:username,:password)
    end

end
