# class RegistrationController < ApplicationController
#     @user = User.create(
#         username: params["username"],
#         password: params["password"]
#     )

#     if @user
#         session[:user_id = @user.id]
#         render json: {
#             status: :created,
#             user: @user
#         }
#     else
#         render json: { status: 500 }
#     end
# end
# end