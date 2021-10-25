class ListedMusicalsController < ApplicationController
    before_action :find_listed_musical, only: [:show, :edit, :update, :destroy]
    def index 
        @listed_musicals = ListedMusical.all
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
    
    def listed_musical_params
        params.require(:listed_musical).permit(:musical_id, :list_id)
    end

    def find_listed_musical
        @listed_musical = Listed_Musical.find(params[:id])
    end
end
