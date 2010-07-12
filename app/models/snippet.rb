class Snippet < ActiveRecord::Base
  has_many :refactorings
  belongs_to :user

  validates :user_id, :presence => true
end
