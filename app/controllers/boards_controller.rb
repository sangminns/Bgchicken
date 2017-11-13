class BoardsController < ApplicationController
  before_action :is_user?, only: [:show, :new]
  load_and_authorize_resource
  
  
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
      @makeBoard.boardUserBGID = current_user.bgid
      @makeBoard.boardCategory = params[:board]["boardCategory"]
      @makeBoard.save
    end

    redirect_to '/boards' #method는 자동으로 get
    
  end
  
  private
  
  def board_params
      params.require(:board).permit(:boardCategory, :boardContent, :board_image_url)
  end
  
  def is_user?
    redirect_to new_user_session_path unless current_user == true
  end
  
end
