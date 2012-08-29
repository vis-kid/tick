class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :admin #admin is a security catastrophe
  # attr_accessible :title, :body
  has_many :tickets
  has_many :permissions

  def to_s
  	"#{email} (#{admin? ? "Admin" : "User"})"
  end

end
