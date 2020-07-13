class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :home
    # This is the page that is routed to. 
    # Only controller needed is to use shops for the map
    def home
        @shops = policy_scope(Shop).order(created_at: :desc)
        @shops = Shop.geocoded
        @markers = @shops.map do |shop|
            {
                lat: shop.latitude,
                lng: shop.longitude
            }
        end
        @disable_nav = true
        @user = User.new
    end
end