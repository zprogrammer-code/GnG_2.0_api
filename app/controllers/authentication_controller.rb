class AuthenticationController < ApplicationController
    def login
        @user.find_by username: params[:username]
        if !@user
            render json: { error: "No account with that username"},
            status: unauthorized
        else
            if!@user.authenticate params[:password]
                render json: { message: "Incorrect username or password" },
            else 
                payload = { user.id: @user.id}
                seceret = Rails.authenticate.seceret_key_base

                token = JWT.encode payload, seceret

                render json: { token: token 
            end}
    end
end

private

def user_params
    params.require(:user)permit :username, :password
end
end