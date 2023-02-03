class UsersController < ApplicationController

        def index
            @event = Event.find(params[:event_id])
            @users = User.all
        end
        
end
