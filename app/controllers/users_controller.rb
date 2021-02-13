class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @spots = Spot.all
  end 
end
