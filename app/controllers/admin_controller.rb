class AdminController < ApplicationController
  def index
    @users = User.all
    @count = User.all.count
  end
   
end
