class UsersController < ApplicationController
   def index
       @users= User.all
   end
   def show
       @users=User.find(params[:id])
   end
   def new 
        @users=User.new
   end
   def create
       @users = User.new(email: params[:user][:email],age: params[:user][:age])
       @users.save
       redirect_to @users
   end
   
end