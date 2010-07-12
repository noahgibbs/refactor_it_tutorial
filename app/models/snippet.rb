class Snippet < ActiveRecord::Base
  has_many :refactors
  belongs_to :user

  validates :user_id, :presence => true
end
