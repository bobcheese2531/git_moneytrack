class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def show 
        @prices = Price.where(user_id: current_user.id)
    end
end
