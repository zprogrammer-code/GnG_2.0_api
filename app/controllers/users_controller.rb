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
    

    if @user.valid?
        secret = Rails.application.secrets.secret_key_base
        payload = {user_id: @user.id}
        token = JWT.encode(payload, seceret)
        render json: {user: @user, jwt: token}
    else
        render json: {errors, user.error.full_messages},
    end

    
#     if @user
#         session[:user_id] = @user.id
#         render json: { 
#             status: :created,
#             user: @user }
#     else
#         render json: { status: 500 }
# end

end
    # payload = {user_id: @user.id}
    # token = JWT.encode payload, secret



def find
    @user = User.find_by(username: params[:user][:username])
    if @user
      render json: @user
    else
      @errors = @user.errors.full_messages
      render json: @errors
    end
   end
end