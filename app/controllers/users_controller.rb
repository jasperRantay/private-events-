class UsersController < ApplicationController

        def index
           
            @users = User.all
            @event = Event.find(params[:event_id])
        end


        def show
            @kombidas = Kombida.all
            @event = Event.find(params[:event_id])
        end

        # def new 
        #     @event = Event.find(params[:event_id])
        #     @registration = @event.registrations.new
        # end

        # def create
        #     @event = Event.find(params[:event_id])
        #     @registration = @event.registrations.new(registration_params)
        #     if @registration.save
        #         redirect_to event_registrations_url(@event),
        #          notice: "Thanks for attending"
        #     else
        #         render :new
        #     end

        # end

        def destroy
            @registration = current_user.registrations.find(params[:id])
            @registration.destroy
            redirect_to events_url, notice: "Cancelled"
        end
        private
    
        def registration_params
            params.require(:registration).permit(:how_heard, :user_id)
        end
        
end
