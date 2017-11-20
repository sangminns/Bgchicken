class MyPageController < ApplicationController
    before_action :is_owner?, only: [:show]
    
    def show
        @user = User.find(params[:id])
    end
    
    def term
    end
    
    
    private 
    
    def is_owner?
        @user = User.find(params[:id])
        redirect_to root_path unless current_user == @user
    end
    
end
