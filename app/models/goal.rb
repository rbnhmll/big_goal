class Goal < ApplicationRecord
	belongs_to :user

	validates :goal_name, :presence => true
end
