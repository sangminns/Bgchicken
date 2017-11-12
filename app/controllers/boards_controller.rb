class BoardsController < ApplicationController
  def index
    @boards = Board.order(created_at: :DESC).page(params[:page]).per(6)
  end

  def new
    @board = Board.new
  end

  def show
    @board = Board.find(params[:id])
  end
  
  def create
    
    if user_signed_in?
      @makeBoard = Board.new(board_params)
      @makeBoard.user_id = current_user.id
      @makeBoard.boardUser = current_user.email
      @makeBoard.boardUserBGID = "test"
      @makeBoard.boardCategory = params[:board]["boardCategory"]
      @makeBoard.save
    end

    redirect_to '/boards' #method는 자동으로 get
    
  end
  
  private
  
  def board_params
      params.require(:board).permit(:boardCategory, :boardContent, :board_image_url)
  end
end
