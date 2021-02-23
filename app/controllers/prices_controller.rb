class PricesController < ApplicationController
    before_action :set_game, only: %i[ edit update destroy ]
    before_action :authenticate_user!
    
    def new
        @price = Price.new
    end
    
    def create
        Price.create(price_params)
        redirect_to root_path
    end
    
    def edit
    end
    
    def update
        @price.update(price_params) if @price.user_id =- current_user.id 
        redirect_to root_path
    end
    
    def destroy
        @price.destroy if @price.user_id == current_user.id
        redirect_to root_path
    end
    
    private
    def set_game
      @price = Price.find(params[:id])
    end
    
    def price_params
        params.require(:price).permit(:name, :price, :start_time).merge(user_id: current_user.id)
    end
    
end
