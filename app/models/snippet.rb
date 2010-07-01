class Snippet < ActiveRecord::Base
  has_many :refactors
  belongs_to :user

  validates_presence_of :user_id
end
