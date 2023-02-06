class KombidarsController < ApplicationController


    def create
            @kobida = Kombida.find(params[:kombida_id])
            @accept = @event.kombidars.create!()
                redirect_to root_path,
                notice: "Thanks for attending"
    end


  
end
