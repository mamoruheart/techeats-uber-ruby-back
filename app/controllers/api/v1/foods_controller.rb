module Api
  module V1
    class FoodsController < ApplicationController
      def index
        restaurant = Restaurant.find(params[:restaurant_id])
        foods = restaurant.foods

        render json: {
          foods: foods,
        }, status: 200
      end
    end
  end
end