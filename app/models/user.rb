class User < ApplicationRecord
  attr_accessor :username, :password

 
    # validates :email, presence:true,
    #                   presence: true,
    #                   length: {maximum:200},
    #                   uniqueness: true

  
  has_secure_password
   
#   validates :password, presence: true,
#                        length: {minimum:6}


end
