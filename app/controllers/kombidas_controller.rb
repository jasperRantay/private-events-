class KombidasController < ApplicationController


    def create
        @kombida = Kombida.new(kombida_params)
        respond_to do |format|
        if @kombida.save
            format.html { redirect_to event_users_path(kombida_params[:event_id]), notice: "Invite sent!" }
        else
            format.html { redirect_to root_path, status: :unprocessable_entity }
            format.json { render json: @komibdaerrors, status: :unprocessable_entity }
        end
        end
    end

    def destroy
        @kombida = Kombida.find_by(kombida_params)
        if @kombida.nil?
          flash.alert = "This invite does not exist"
        elsif @kombida.destroy
          flash.notice = "Invite removed."
        else
          flash.alert = "Error - invite was not deleted."
        end
        redirect_to event_users_path
      end
      
      private
    
      def kombida_params
        params.permit(:user_id, :event_id)
      end


end
