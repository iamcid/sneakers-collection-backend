class SneakersController < ApplicationController
    before_action :set_sneaker, only: [:show, :update, :destroy]

    def index
        sneakers = Sneaker.all

        render json: SneakerSerializer.new(sneakers)
    end

    def show

        render json: sneaker
    end

    def create
        sneaker = Sneaker.new(sneaker_params)
        if sneaker.save
            render json: sneaker            
        else
            render json: {errors: sneaker.errors.full_messages}
        end
    end

    def update
        sneaker.update(sneaker_params)

        render json: @sneaker
    end

    def destroy
        sneaker.delete

        render json: {sneakerId: sneaker.id}
    end

    private
        def set_sneaker
            sneaker = Sneaker.find(params[:id])
        end

        def sneaker_params
            params.require(:sneaker).permit(:colorway, :name, :brand, :price, :image)
        end
end
