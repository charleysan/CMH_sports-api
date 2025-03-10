class Ap1::V1::TeamsController < ApplicationController
  def index
    teams = Team.all
    render json: teams
end
 