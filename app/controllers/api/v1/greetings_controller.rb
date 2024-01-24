module Api
  module V1
    class GreetingsController < ApplicationController
      # GET /greetings or /greetings.json
      def index
        @greetings = [Greeting.order('RANDOM()').first]
        render json: @greetings
      end
    end
  end
end
