class Excercise < ApplicationRecord
	has_many :questions

	validates	:title, presence: true
	validates	:description, presence: true
	validates	:questions, presence: true
end
