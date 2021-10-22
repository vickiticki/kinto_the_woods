class BooksController < ApplicationController
    before_action :find_book, only: [:show, :edit, :update, :destroy]
    def index 
        @books = Book.all
    end

    def show
       @musical = @book.musical
       @creator = @book.creator
    end

    def new
        @book = Book.new
    end
    
    def create 
        @book = Book.new(book_params)
        if @book.save
          redirect_to @book
        else
          render 'new'
        end
    end
      
    # def edit
    #     @creator = Creator.find(params[:id])
    # end
    
    # def update
    #     @creator.update(creator_params)
    #     redirect_to creator_path(@creator)
    # end
    
    # def destroy
    #     @creator.destroy
    #     redirect_to creators_path
    # end

    private
    
    def book_params
        params.require(:book).permit(:musical_id, :creator_id)
    end

    def find_book
        @book = Book.find(params[:id])
    end
end
