class MembershipController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    def index
        memberships = Membership.all
        render json: memberships
    end
    def create
        membership = Membership.create!(client_id: params[:client_id], gym_id: params[:gym_id], charge: params[:charge])
        render json: membership, status: :created
    end


    private 

    def render_unprocessable_entity_response(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end
