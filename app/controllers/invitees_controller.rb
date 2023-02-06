class InviteesController < ApplicationController


    def create
        @invitee = Invitee.new(invitee_params)
        if @invitee.save!
            redirect_to root_path, notice: "Event Added"
        else
            redirect_to event_users_path, notice: "Fail"
        end 
    end

    def destroy
        @invitee = Invitee.find_by(invitee_params)
        if @invitee.nil?
          flash.alert = "This invite does not exist"
        elsif @invitee.destroy
          flash.notice = "Invite removed."
        else
          flash.alert = "Error - invite was not deleted."
        end
        redirect_to event_users_path, notice: "You cancelled the invitation"
      end

      
      private
    
      def invitee_params
       params.permit(:user_id, :event_id)
      end


end
