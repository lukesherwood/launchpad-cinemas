class ApplicationController < ActionController::Base
    def index
        @movies = Movie.all
        @user = User.new
        render 'home/welcome'
    end
end
