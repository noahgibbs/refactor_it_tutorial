class User < ActiveRecord::Base
  has_many :snippets
  has_many :refactors

  # Include default devise modules. Others available are:
  # :token_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :username

  validates :email, :uniqueness => true, :format => /\A[^@\s]+@[^@\s]+\Z/
  validates :username, :uniqueness => true, :format => /^([a-z0-9_-]|\s)+$/i,
    :length => 2..20

end
