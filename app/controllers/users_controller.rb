class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new    # ustvari se nov user 
  end
  
  def create
    @user = User.new(user_params)   #ta @user se bo uporablkal v new.html.erb
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!" #se bo pojavilo samo enkrat 
      # Handle a Successful save
      redirect_to @user            # originally user_url(@user)
    else
      render 'new' # renders new template (new.html.erb in views)
    end
  end
  
  private
  
      def user_params
        params.require(:user).permit(:name, :email, :password,    #strong parameters technique
                                     :password_confirmation)
      end
end
