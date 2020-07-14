class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:home, :frontpage]
    # This is the page that is routed to. 
    # Only controller needed is to use shops for the map
    def home
        @shops = policy_scope(Shop).order(created_at: :desc)
        @shops = Shop.geocoded
        location = request.location
        @nearbyshops = Shop.near([location.latitude, location.longitude], 10)
        # @nearbyshops = Shop.near(request.location.city, 10)
        

        @markers = @shops.map do |shop|
            {
                lat: shop.latitude,
                lng: shop.longitude
            }
        end
        @disable_nav = true
    end

    def frontpage
        @shops = policy_scope(Shop).order(created_at: :desc)
        @shops = Shop.geocoded
        location = request.location
        # @nearbyshops = Shop.near([location.latitude, location.longitude], 200, :order => "distance")
        @nearbyshops = Shop.near("Godalming", 20000, :order => "distance")
        @markers = @shops.map do |shop|
            {
                lat: shop.latitude,
                lng: shop.longitude
            }
        end
    end
end
