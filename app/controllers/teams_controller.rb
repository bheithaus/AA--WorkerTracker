class TeamsController < ApplicationController
  def index
    @teams = Team.includes(:supervisor, :members).all
  end
  
  def show
    @team = Team.includes(:supervisor, :members).find(params[:id])
  end
  
  def new
    @team = Team.new
  end
  
  def create
    @team = Team.new(params[:team])
    if @team.save
      flash[:success] = "new team created!"
      redirect_to @team
    else
      render :new
    end
  end
  
  def edit
    @team = Team.find(params[:id])
  end
  
  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(params[:team])
      flash[:success] = "team updated!"
      redirect_to @team
    else
      render :edit
    end
  end
end
