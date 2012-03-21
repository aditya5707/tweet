class LoginsController < ApplicationController

  
  def new
    @login = Blogger.new
  end

  def index
   @logins = Blogger.all
 end

  def create
  @login = Log.new(params[:blogger])
    @login.save
   redirect_to logins_path :notice => 'User saved successfully'
  end
end
