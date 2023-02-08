class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client
    validates :client_id, uniqueness: {scope: :gym_id}
    validates_associated :gym, :client
    validates :charge, presence: true
end
