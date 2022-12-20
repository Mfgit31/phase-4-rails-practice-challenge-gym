class GymsController < ApplicationController

    def index

        render json: Gym.all, status: :ok

    end


    def show 

        new_show = Gym.find_by_id(params[:id])

        if new_show
    
            render json: new_show

        else 
            render json: {errors: "Gym not found"}, status: :not_found
        end
    
    end

    def destroy

        gym_removed = Gym.find_by_id(params[:id])

        if gym_removed

            gym_removed.destroy

        else 
            render json: { message: "Nothing to delete"}, status: :not_found
        end


    end
end




