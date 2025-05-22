module Api
  module V1
    class RestaurantsController < ApplicationController
      def index
        restaurants = Restaurant.all
        render json: {
          restaurants: restaurants,
        }, status: 200
      end
    end
  end
end
