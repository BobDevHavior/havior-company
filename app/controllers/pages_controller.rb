    class PagesController < ApplicationController
      skip_before_action :authenticate_user!, only: [:home, :legal, :team]

      def home
      end

      def team
      end

      def legal
      end
    end
