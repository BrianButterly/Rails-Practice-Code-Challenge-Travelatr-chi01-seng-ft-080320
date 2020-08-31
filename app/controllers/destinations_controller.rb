class DestinationsController < ApplicationController

    def index
        @destinations = Destination.all
    end

    def show
        @destination = Destination.find(params[:id])
        @recent_posts = @destination.posts.last(5)
    end
end
