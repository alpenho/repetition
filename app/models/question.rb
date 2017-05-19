class Question < ApplicationRecord
	belongs_to :exercise

	validates	:content, presence: true
	validates	:answer, presence: true
end
