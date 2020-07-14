class ConsumerController < ApplicationController
    skip_before_action :authenticate_user!, only: :frontpage
    # Gonna need to change this later to only authorise buyers
    def frontpage
        # skip_authorization
        @shops = policy_scope(Shop).order(created_at: :desc)
        authorize @shops
        @shops = Shop.geocoded

        @markers = shops.map do |shop|
            {
                lat: shop.latitude,
                lng: shop.longitude
            }
        end
    end
end
