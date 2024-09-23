class BoardsController < ApplicationController
  def index
    @boards = Board.all  
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      redirect_to @board
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def   board_params
      params.require(:board).permit(:type, :quantity, :serial_number, :service_order, :brand)
    end
end
