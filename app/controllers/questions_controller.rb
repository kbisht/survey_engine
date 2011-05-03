class QuestionsController < ApplicationController

	before_filter :authenticate, :only => [:edit, :update, :destroy, :create]

	 def new
		@question = Question.new
		@title = "Question generation"
	 end

	def create
		
		@question = Question.new(params[:question])
		@question.user_survey = UserSurvey.find(@question.user_survey_id)

		if @question.save
		flash[:success] = "Question created!" 

#+ "q user is = "+ @question.user_survey_id.to_s + " @question.user_survey id = " + #@question.user_survey.id.to_s+ "cont q = " +UserSurvey.find(@question.user_survey_id).questions.count.to_s

		redirect_to questioncreate_path #surveycreate_path # to do: redirect to question creation
		else
		flash[:success] = "Try Again !!"
		render 'pages/home'
		end
	end

	def destroy
	@question.destroy
	redirect_back_or root_path
	end


	def update

	end

	def index
		@title = "All Surveys"
		@user_surveys = UserSurvey.paginate(:page => params[:page])
	end


	 def show
	 	
  	 end


	private
		def authorized_user
		@user_survey = UsersController.find(params[:id])
		redirect_to root_path unless current_user?(@user_survey.user)
	end

		
end

