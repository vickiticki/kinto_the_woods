class MusicalsController < ApplicationController

    def index 
        @musicals = Musical.all 
    end
end
