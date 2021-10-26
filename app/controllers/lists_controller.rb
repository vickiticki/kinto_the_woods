class ListsController < ApplicationController
    before_action :find_list, only: [:show, :edit, :update, :destroy]
    def index 
        @lists = List.all
    end

    def show
      # @user = @list.user
      @items = @list.items
      # @listed_musicals = @list.listed_musicals
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
      
      def edit
        @list = List.find(params[:id])
      end
    
      def update
        @list.update(list_params)
        redirect_to list_path(@list)
      end
    
      def destroy
        @user = User.find(@list.user_id)
        @list.destroy
        Item.where(id: @list.items).delete_all 
        # Review.where(id: @ride.reviews).delete_all
        redirect_to user_path(@user)
      end

    private

    def list_params
        params.require(:list).permit(:list_title, :user_id, :items)
    end

    def find_list
        @list = List.find(params[:id])
    end
end
