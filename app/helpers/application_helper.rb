module ApplicationHelper
	def checkcode(code1, code2)
		_code1 = code1.to_s
		_code2 = code2.to_s
		if (_code2.index(_code1) == 0)
			return true
		else
			return false
		end

	end
end
