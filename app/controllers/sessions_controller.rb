class SessionsController < ApplicationController

def create
if user_params[:password_digest] == nil || user_params[:password_digest].empty? 
    redirect_to '/login'
else 
    @user = User.find_by(name: user_params[:name])
         if @user.authenticate(user_params[:password_digest])
            session[:user_id] = @user.id
            redirect_to '/welcome'
         else  
        redirect_to '/login'
         end
        end 
    end 

private 

def user_params
    params.require(:user).permit(:name, :password_digest)
end

end 