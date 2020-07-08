class AuthenticationController < ApplicationController
    def login
        @user.find_by username: params[:username]
        if !@user
            render json: { error: "No account with that username"},
            status: unauthorized
            byebug
        else
            
            if!@user.authenticate params[:password]
                render json: { message: "Incorrect username or password" },
        else 
                payload = { User.id: @user.id}
                Seceret = Rails.authenticate.seceret_key_base

                token = JWT.encode payload, seceret

                render json: { token: token }, status: :created
            end
    end
end

private

def user_params
    params.require(:user)permit :username, :password
end
end