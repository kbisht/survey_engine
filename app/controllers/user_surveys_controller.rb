class UserSurveysController < ApplicationController
	before_filter :authenticate, :only => [:edit, :update, :destroy, :create]

	def create
		@user_survey = current_user.user_surveys.build(params[:user_survey])
		if @user_survey.save
		flash[:success] = "Survey skelton created!"
		redirect_to surveycreate_path # to do: redirect to question creation
		else
		flash[:success] = "Try Again !!"
		render 'pages/home'
		end
	end

	def destroy
	@user_survey.destroy
	redirect_back_or root_path
	end


	def update

	end

	def index
		@title = "All Surveys"
		@user_surveys = UserSurvey.paginate(:page => params[:page])
	end

	private
		def authorized_user
		@user_survey = UsersController.find(params[:id])
		redirect_to root_path unless current_user?(@user_survey.user)
	end

		
end

