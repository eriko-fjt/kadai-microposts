class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  
  has_many :favorites
  has_many :be_liked, through: :favorites, source: :user
  # be_likedの方は、現時点では不使用
end


