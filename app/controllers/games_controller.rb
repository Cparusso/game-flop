class GamesController < ApplicationController
  before_action :find_game, only: [:show, :edit, :update, :destroy]
  # before_action :find_game, except: [:index, :new, :create]

  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
    @consoles = Console.all
  end

  def create
    game = Game.create(game_params)
    redirect_to game
  end

  def edit
    @consoles = Console.all
  end

  def update
    @game.update(game_params)
    redirect_to @game
  end

  def destroy
    @game.delete
    redirect_to games_path
  end

  private

  def find_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :genre, :maturity_rating, :price, :console_id)
  end
end
