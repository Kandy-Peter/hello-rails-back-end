module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        @greetings = Greeting.all.limit(1).order('RANDOM()')

        render json: @greetings
      end
    end
  end
end
