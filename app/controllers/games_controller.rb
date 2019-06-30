class GamesController < ApplicationController

  def index

    if params[:search]
      @games = Game.all.select do |game|
        game.title.downcase.include?(params[:search].downcase)
      end
    else
      @games = Game.all
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
    @consoles = Console.all
  end

  def create
    @game = Game.new(game_params)
    if @game.valid?
      @game.save
      redirect_to @game
    else
      flash[:errors] = @game.errors.full_messages
      redirect_to edit_game_path(@game)
    end
  end

  def edit
    @game = Game.find(params[:id])
    @consoles = Console.all
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    if @game.valid?
      @game.save
      redirect_to @game
    else
      flash[:errors] = @game.errors.full_messages
      redirect_to edit_game_path(@game)
    end
  end

  def destroy
    @game = Game.find(params[:id])
    console = @game.console
    @game.destroy
    redirect_to console_path(console)
  end

  private

  def game_params
    params.require(:game).permit(:title, :maturity_rating, :price, :genre, :console_id)
  end
end
