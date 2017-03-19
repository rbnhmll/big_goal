module GoalsHelper

	def time_remains(goal)
		if goal.deadline - Time.zone.now > 0
			return true
		end
	end

end
