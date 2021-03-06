class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
# Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
        has_many :posts
end
