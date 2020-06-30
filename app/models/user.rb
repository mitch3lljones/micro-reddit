class User < ApplicationRecord
    has_many :posts, dependent: :destroy
	has_many :comments, dependent: :destroy

	validates :name, presence: true, length: {in: 4..20}, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
