class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments,  dependent: :destroy
    validates :username, presence: true, length: {in: 6..16}, uniqueness: true
end
