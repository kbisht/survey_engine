class ResultsController < ApplicationController


  def show
	
  end


  def new	
	
	@questionID = params[:question_id]
	@question = Question.find(@questionID )

#	@surveyid = @question.user_survey_id       
	@result = Result.new
  end

  def create    

	@result = Result.new(params[:result])
         
	  if @result.save
		flash[:success] = "Survey " + params[:result][:user_survey_id].to_s
	  else

	  flash[:success] = "could not be saved" 

	 end 

			#	redirect_to :back

     returnpath = "http://0.0.0.0:3000/user_surveys/" + params[:result][:user_survey_id].to_s

     redirect_to returnpath
    
  end #end of create

 
end
