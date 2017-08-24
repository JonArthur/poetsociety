class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :poem
	validates :body, presence: true, length: { minimum: 10}
end
