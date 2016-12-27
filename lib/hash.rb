class Hash
	#	Returns a new hash with keys transformed to the specified case. Valid
	#	arguments are :lcamel, :lower_camel, :ucamel, :upper_camel and :snake. 
	#	Takes an optional `deep` argument which defaults to `true`.
	# Return values always have keys of type String.
	def transform_key_case(key_case, deep: true)
		proc = key_case_transformation_proc(key_case)

		if deep
			self.deep_transform_keys(&proc)
		else 
			self.transform_keys(&proc)
		end
	end


	#	Returns a new hash with keys transformed to the specified case. Valid
	#	arguments are :lcamel, :lower_camel, :ucamel, :upper_camel and :snake. 
	#	Takes an optional `deep` argument which defaults to `true`.h
	# The keys will always be of type String.
	def transform_key_case!(key_case, deep: true)
		proc = key_case_transformation_proc(key_case)

		if deep
			self.deep_transform_keys!(&proc)
		else 
			self.transform_keys!(&proc)
		end
	end

	private

	#	Takes the desired key case as an argument, and returns a proc that will
	# be used as the transformation.
	def key_case_transformation_proc(key_case)
		case key_case
		when :snake
			Proc.new { |k| k.to_s.underscore }
		when :lcamel, :lower_camel
			Proc.new { |k| k.to_s.camelize(:lower).delete("?") }
		when :ucamel, :upper_camel
			Proc.new { |k| k.to_s.camelize(:upper).delete("?") }
		end
	end
end