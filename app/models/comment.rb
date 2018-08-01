class Comment < ApplicationRecord
  belongs_to :user, optional: true
  validates :user, presence: false, uniqueness: false
  belongs_to :gossip
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
  has_many :likes
end
