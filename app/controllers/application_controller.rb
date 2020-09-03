class ApplicationController < ActionController::API
   
    ship_before_action :verify_authenticity_token
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

def session_user
        decoded_hash = decoded_token
        if !decoded_hash.empty
            user_id = decoded[0]['user_id']
            @user = User.find_by(id: user_id)
        else
            nil
        end
    end
end

def auth_header
    request.headers["Authorization"]
end

def decoded_token
    if auth_header
        token = auth_header.split("")[1]
        begin
            JWT.decode(token, "my_secret", true, algorithm: "HS256")
        rescue JWT::DecodeError
            [
        end
    end
end

end
            ]

