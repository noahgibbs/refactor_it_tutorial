class Refactoring < ActiveRecord::Base
  belongs_to :snippet
  belongs_to :user

  validates_presence_of :snippet_id
end
