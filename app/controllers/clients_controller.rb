class ClientsController < ApplicationController

    def index

        render json: Client.all

    end
    
    
    
    
    def show 

        new_client = Client.find_by_id(params[:id])

        if new_client
    
            render json: new_client
        else 
            render json: {errors: "Client not found"}, status: :not_found
        end
    
    end


end
