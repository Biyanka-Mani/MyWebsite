class UsersController < ApplicationController
   before_action :find_user,only:[:show,:edit,:update,:destroy]
   
   def show
   end
  
   def login
      @user = User.new 
   end

   def autheticator
      @user = User.find_by(username: params[:user][:username])
      if @user.nil?
         flash[:alert] = "Invalid username"
         render :login, status: :unprocessable_entity
      else   
         if @user.password== params[:user][:password]
            flash[:notice]="Successful Login"
            redirect_to user_path(@user.id)
         else
            flash[:alert]="Unsuccessful Login"
            render :login, status: :unprocessable_entity
          end
      end
   end

   def signup
      @user=User.new
   end
   def create 
      @user=User.new(user_params)
    
      if @user.save
         flash[:notice]="Registration Successfull"
         redirect_to user_path(@user.id)
      else
         render :signup, status: :unprocessable_entity
      end

   end
   def edit 
   end

   def update
      if @user.update(user_params)
         flash[:notice]="User Updated Successful"
         redirect_to user_path(@user.id)
      else
         render :edit , status: :unprocessable_entity
      end
   end

   def destroy
      @user.destroy
      flash[:notice]="User Deleted Successful"
      redirect_to  dashboard_path
   end


   private
   def find_user
      @user=User.find(params[:id])
   end
   def user_params
      params.require(:user).permit(:firstname, :lastname,:username,:password,:phone,:dob,:address,:age, :status, :experience, :bio, :work_summary, :mail)
   end
end
