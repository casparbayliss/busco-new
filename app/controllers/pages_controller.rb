class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :home
    def home
        @shops = policy_scope(Shop).order(created_at: :desc)
        @shops = Shop.geocoded
        @markers = @shops.map do |shop|
            {
                lat: shop.latitude,
                lng: shop.longitude
            }
        end
    end
end
