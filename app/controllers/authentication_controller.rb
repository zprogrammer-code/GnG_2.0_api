class AuthenticationController < ApplicationController
    def login
        @user = User.find_by username: params[:username]
       
        if @user
            if @user.authenticate params[:password]

            secret = Rails.application.secrets.secret_key_base
            payload = { user_id: @user.id }
            token = JWT.encode(payload, secret)
            decoded_token = JWT.decode(token, secret)
            
            render json: { 
                username: @user.username,
                    password: @user.password,
                     jwt: token, success: "Welcome back, #{@user.username}" }, status: :created 
            else
                render json: { error: "No account with that username"}, status: :unauthorized
            end
        else
                render json: { message: "Incorrect username or password" }
            end
    end
end





