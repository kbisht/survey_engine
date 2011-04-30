class PagesController < ApplicationController

  def Home

	@title = "HOME"
	@user_survey = UserSurvey.new if signed_in?


  end

  def Help
	@title = "HELP"
  end

  def Take_Survey
	@title = "Take Survey"
  end 

  def Survey_Admin
 
  end
  
  def View_Result

  end 	
  
  def About

  end

  def Contact
   
  end

  def Survey_Create
   @user_survey = UserSurvey.new if signed_in?
  end	
  
	
end
