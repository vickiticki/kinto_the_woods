class ItemsController < ApplicationController
    before_action :find_item, only: [:show, :edit, :update, :destroy]
    def index 
        @items = Item.all
    end

    def show
       @musical = @item.musical
       @list = @item.list
    end

    def new
        @item = Item.new
    end
    
    def create 
        @item = Item.new(item_params)
        if @item.save
            @list = @item.list
            redirect_to list_path(@list)
        else
            render 'new'
        end
    end
      
    def edit
        @item = Item.find(params[:id])
    end
    
    def update
        @item.update(item_params)
        redirect_to item_path(@item)
    end
    
    def destroy
        @list = @item.list
        @item.destroy
        redirect_to list_path(@list)
    end

    private
    
    def item_params
        params.require(:item).permit(:musical_id, :list_id)
    end

    def find_item
        @item = Item.find(params[:id])
    end
end
