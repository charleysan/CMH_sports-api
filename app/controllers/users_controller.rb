class UsersController < ApplicationController
  def create
    user = User.create(name: params[:name], email: params[:email], password: params[:password], role: params[:role])
  render json: user
end
