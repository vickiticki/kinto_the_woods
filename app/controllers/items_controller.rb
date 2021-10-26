class ItemsController < ApplicationController
    before_action :find_item, only: [:show, :edit, :update, :destroy]
    def index 
        @items = Item.all
    end

    # def show
    #    @musical = @book.musical
    #    @creator = @book.creator
    # end

    # def new
    #     @book = Book.new
    # end
    
    # def create 
    #     @book = Book.new(book_params)
    #     if @book.save
    #       redirect_to @book.musical
    #     else
    #       render 'new'
    #     end
    # end
      
    # def edit
    #     @book = Book.find(params[:id])
    # end
    
    # def update
    #     @book.update(book_params)
    #     redirect_to book_path(@book)
    # end
    
    # def destroy
    #     @book.destroy
    #     redirect_to books_path
    # end

    private
    
    def item_params
        params.require(:item).permit(:musical_id, :list_id)
    end

    def find_book
        @item = Item.find(params[:id])
    end
end
