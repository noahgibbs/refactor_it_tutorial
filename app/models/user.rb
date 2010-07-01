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

  validates_uniqueness_of :email
  validates_uniqueness_of :username
  validates_format_of :email, :with => /\A[^@\s]+@[^@\s]+\Z/
  validates_format_of :username, :with => /^([a-z0-9_-]|\s)+$/i
  validates_length_of :username, :within => 2..20

end
