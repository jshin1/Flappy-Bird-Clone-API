class Api::V1::PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: @players, status: :ok
  end

  def show
    @player = Player.find(params[:id])
    render json: @player, status: :ok
  end

  def create
    @player = Player.create({name: params[:name], score: params[:score]})
    render json: @player, status: :ok
  end

  private

  def player_params
    params.permit(:name, :score)
  end


end
