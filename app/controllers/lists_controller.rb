class ListsController < ApplicationController
    before_action :find_list, only: [:show, :edit, :update, :destroy]
    def index 
        @lists = List.all
    end

    def show
      @user = @list.user
      @listed_musicals = @list.listed_musicals
    end

    def new
        @list = List.new
    end
    
    def create 
        @list = List.new(list_params)
        if @list.save
          redirect_to @list
        else
          render 'new'
        end
    end
      
    #   def edit
    #     @musical = Musical.find(params[:id])
    #   end
    
    #   def update
    #     @musical.update(musical_params)
    #     redirect_to musical_path(@musical)
    #   end
    
    #   def destroy
    #     @musical.destroy
    #     redirect_to musicals_path
    #   end

    private

    def list_params
        params.require(:list).permit(:list_title, :user_id)
    end

    def find_list
        @list = list.find(params[:id])
    end
end
