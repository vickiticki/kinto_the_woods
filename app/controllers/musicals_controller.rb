class MusicalsController < ApplicationController
    before_action :find_musical, only: [:show]
    def index 
        @musicals = Musical.all 
    end

    def show
        # @musical = Musical.find(params[:id])
    end

    private

    def find_musical
        @musical = Musical.find(params[:id])
    end

end
