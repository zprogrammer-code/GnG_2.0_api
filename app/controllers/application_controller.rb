class ApplicationController < ActionController::API
    def authenticate
        auth_header = request.headers["Authorization"]
        token = auth_header.split(" ")[1]

        if !token
            render json: { error: "you must be logged in to do this"}, status: :unauthorized
        else
                secret = Rails.application.secret_key_base
            begin
                decoded_token = JWT.decode(token, secret)
                payload= decoded_token.first
         
                user_id = payload["user_id"]
                @user = User.find(user_id)
            rescue
                render json: { error: "you must be logged in to do this"}, status: :unauthorized
            end
        end
    end
end
