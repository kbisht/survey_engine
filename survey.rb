class survey

	attr_accessor :id, :name, :desc

	def initialize(attributes = {})
		@id = attributes[:id]
		@name = attributes[:name]
		@desc = attributes[:desc]	
	end 

end 
