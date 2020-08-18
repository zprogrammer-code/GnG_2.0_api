class User < ApplicationRecord
   validates :username, 
             presence:true,
             length: {maximum:200},
            uniqueness: true

    has_secure_password
end               




