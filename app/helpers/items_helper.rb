module ItemsHelper
	def weight_kg(n)
		if n.nil? || n.empty?
			"kilograms"
		else
			Unit.new(n).to_s("kg")
		end
	end
	
	def weight_lbs(n)
		if n.nil? || n.empty?
			"pounds"
		else
			Unit.new(n).to_s(:lbs)
		end
	end
end
