class Post < ApplicationRecord
  belongs_to :sub_category
  belongs_to :user
  acts_as_votable
end
