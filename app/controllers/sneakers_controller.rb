class SneakersController < ApplicationController

    def index
        sneakers = Sneaker.all

        render json: SneakerSerializer.new(sneakers)
    end

    def create
        sneaker = Sneaker.new(sneaker_params)

        if sneaker.save
            render json: SneakerSerializer.new(sneaker)           
        else
            render json: {errors: sneaker.errors.full_messages}
        end
    end

    def destroy
        sneaker = Sneaker.find(params[:id])
        sneaker.destroy
    end

    private
    
    def sneaker_params
        params.require(:sneaker).permit(:colorway, :name, :brand, :price, :image)
    end
end
