class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if (!session[:name])
      redirect_to "/new"
    redirect_to '/'
  end

  def destroy
    session.delete :name
  end
end
