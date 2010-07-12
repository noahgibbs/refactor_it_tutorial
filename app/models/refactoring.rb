class Refactoring < ActiveRecord::Base
  belongs_to :snippet
  belongs_to :user

  validates :snippet_id, :presence => true
end
