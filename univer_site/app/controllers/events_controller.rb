class EventsController < ApplicationController
    def index
    end
    def show
        @events = event.findAll()
    end
end
