class ApplicationController < ActionController::Base
    def index
        @movies = Movie.all
        render 'home/welcome'
    end
end
