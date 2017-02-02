module ItemsHelper
	def weight_kg(n)
		if n
			Unit.new(n).to_s("kg")
		else
			"kilograms"
		end
	end
	
	def weight_lbs(n)
		if n
			Unit.new(n).to_s(:lbs)
		else
			"pounds"
		end
	end
end
