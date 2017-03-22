module GoalsHelper

	def time_remains(goal)
		if goal.deadline - (Time.zone.now + Time.now.utc_offset ) > 0
			return true
		end
	end

end
