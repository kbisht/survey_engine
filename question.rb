class question

	attr_accessor :id, :survey_id, :question

	def initialize(attributes = {})
		@id = attributes[:id]
		@survey_id = attributes[:name]
		@question = attributes[:desc]	
	end 

end 
