class ListingsController < ApplicationController
   before_action :find_listing, only: [:show, :edit, :update]
   def index
     @listings = Listing.all
   end

   def new
     @listings = Listing.new
   end

   def create
      byebug
        @listing = current_user.listings.new(listing_params)
     if @listing.save
        redirect_to listings_path
     end
   end

   def show

   end

   def edit
   end


   def update
     if @listing.update(user_params)
        flash[:success] = "Success update the listing"
       redirect_to @listing
     else
       flash[:danger] = "Invalid updating listing"
       render :edit
     end
   end


   def find_listing
     byebug
     @listing = Listing.find(params[:id])

   end

   def listing_params
      params.require(:listing).permit(:title, :description, :max_guests, :price)
   end


end
