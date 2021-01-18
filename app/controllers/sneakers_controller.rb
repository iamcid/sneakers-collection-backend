class SneakersController < ApplicationController
    before_action :set_sneaker, only: [:show, :update, :destroy]

    def index
        @sneakers = sneaker.all

        render json: @sneakers
    end

    def show

        render json: @sneaker
    end

    def create
        @sneaker = sneaker.create(sneaker_params)

        render json: @sneaker
    end

    def update
        @sneaker.update(sneaker_params)

        render json: @sneaker
    end

    def destroy
        @sneaker.delete

        render json: {sneakerId: @sneaker.id}
    end

    private
        def set_sneaker
            @sneaker = sneaker.find(params[:id])
        end

        def sneaker_params
            params.require(:sneaker).permit(:colorway, :name, :brand, :price, :image)
        end
end
