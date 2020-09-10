class UsersController < ApplicationController
  
  
  # before_action :authenticate, only: [:index, :create]
  attr_accessor :username, :password  
  
  def create 
  
      @user = User.create(
      username: params[:username],
      password: params[:password]
  )
  
  # render json: @user
  #     if @user.valid?
  #         secret = Rails.application.secrets.secret_key_base
  #         payload = {user_id: @user.id}
  #         token = JWT.encode(payload, seceret)
  #         render json: {user: @user, jwt: token}
  #     else
  #         render json: { status: 500 }
  #     end
  # end
  end

    def new
        attr_accessor :username , :password
        def initialize(attributes = {})
        @username = attributes[:username]
        @password = attributes[:password]
      end


    def index
            @user = User.all 
            
            render json: @user
    end
                


# if @user
#     session[:user_id] = @user.id
#     render json: { 
#           status: :created,
#             user: @user }
#     else
#         render json: { status: 500 }
# end

# end
    
    def find
    @user = User.find_by(username: params[:username])
    if @user
      render json: @user
    else
      @errors = @user.errors.full_messages
      render json: @errors
    end
   
end
end
end
