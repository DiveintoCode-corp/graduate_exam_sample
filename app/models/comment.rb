class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :content, presence: true

  def permit_access?(user)
    self.user == user
  end
end
