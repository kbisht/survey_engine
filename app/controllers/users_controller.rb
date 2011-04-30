class UsersController < ApplicationController


  def show
	@user = User.find(params[:id])
	@user_surveys = @user.user_surveys.paginate(:page => params[:page] )
	@title = @user.name
  end


  def new
	@user = User.new
	@title = "Sign Up"
  end

  def create
	@user = User.new(params[:user])

	if @user.save
		sign_in @user
		flash[:success] = "Success!"
		redirect_to @user
	else
		@title = "Sign up"
		render 'new'
	end
  end

  def index
	@title = "All users"
	@users = User.paginate(:page => params[:page])
  end


  
	

end
