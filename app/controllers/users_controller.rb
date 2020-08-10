class UsersController < ApplicationController
   
    # before_action: authenticate, only: [:index]

    def index
            @user = User.all 
            render json: @user
    end
                

    def create 

    @user = User.create(
        username: params[:username],
        password: params[:password]
    )
    
    
    render json: { user: @user }
end

    # secret = Rails.application.secrets.secret_key_base
    # payload = {user_id: @user.id}
    # token = JWT.encode payload, secret

end

