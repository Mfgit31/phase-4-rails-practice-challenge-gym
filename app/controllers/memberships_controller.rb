class MembershipsController < ApplicationController

        def index

            render json: Membership.all

        end

    def create

        new_membership = Membership.new(new_membership_params)

        if new_membership.save
            render json: new_membership
        else
            render json: {
                "errors": new_membership.errors.full_messages
            }, status: :unprocessable_entity 
        end
    end

    def show
    
        membership = Membership.find(params[:id])

        render json: membership

    end





    private

    def new_membership_params
        params.permit(:gym_id, :client_id, :charge)
    end

end
